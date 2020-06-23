# dataFEED edgeConnector 840D

Softing´s dataFEED edgeConnector 840D is a containerized connectivity module adding OPC UA Server functionality.

It is possible to connect up to 5 Siemens SINUMERIK 840D SL/PL devices.

## Supported Operating Systems

dataFEED edgeConnector 840D can be used on any Docker host that can execute Linux Docker containers based on an x86_64 architecture.

## Default Settings

The default settings are described in the [Default Settings](../common/defaults.md) chapter.

## Physical Connection to SINUMERIK 840D Controller

The different SINUMERIK 840D variants provide different physical connection types.
SINUMERIK 840D SL offers access by Ethernet interfaces. And SINUMERIK 840D PL offers only MPI access.

## Physical Connection to SINUMERIK 840D SL

SINUMERIK 840D SL has 3 Ethernet interfaces:
  1. **X120** for the device connection to HMIs and keyboards
  2. **X130** for the company network
  3. **X127** for service purposes

![Interface Overview](../documentation_pics/OPCUA_activate_006.png)

![Network Configuration](../documentation_pics/OPCUA_activate_009.png)

dataFEED edgeConnector 840D uses the S7 Communication (TCP/102) protocol of SINUMERIK 840D SL.
This protocol is by default available at interface **X120** and could be enabled for interface **X130**.

Thus, the host PC, which should run dataFEED edgeConnector 840D needs either
  - a physical connection to the interface **X120** and an unique IPv4 address within the corresponding network
  - or a physical connection to the interface **X130**, an unique IPv4 address within the corresponding network and the S7 communication protocol explicitly enabled for this interface.

## Physical Connection to SINUMERIK 840D PL

SINUMERIK 840D PL provides two MPI interfaces for communication.
Therefore an Ethernet to MPI converter is needed.

The Ethernet to MPI converter translates the RFC-1006 TSAP addresses into MPI addresses.
So the default MPI addresses of SINUMERIK 840D PL are translated into the following TSAP settings:

  - TSAP NCK (powerline): `03 03`
  - TSAP PLC (powerline): `03 02`

## Running dataFEED edgeConnector 840D

In order to run dataFEED edgeConnector 840D a working Docker environment is required.
For Docker installation instructions please refer to the [official Docker installation documentation](https://docs.docker.com/install/)

### Pulling the image

The Docker images are provided through a public registry.
To get the latest Docker image you need to pull the image from [https://hub.docker.com/r/softingindustrial/](https://hub.docker.com/r/softingindustrial/):.
```bash
docker image pull softingindustrial/edgeconnector-siemens:latest
```

### Run the Docker container

After the Docker image has been pulled, a Docker container can be started.
The webserver and OPC UA Server of the module have to be exposed on the host machine if the dataFEED edgeConnector modules shall be accessed from outside the dockerized environment.

To start dataFEED edgeConnector 840D with the default ports mapped 1:1 to the host machine:
```bash
docker container run -p 443:443 -p 8099:8099 -p 4897:4897 softingindustrial/edgeconnector-840d
```
The above example can be adapted to match the needs of your environment.
For example, if your host already runs a webserver and the https port is blocked, the command can be adjusted to expose the https port of dataFEED edgeConnector 840D on a different port:

```bash
docker container run -p 1443:443 -p 8099:8099 -p 4897:4897 softingindustrial/edgeconnector-840d
```
The `-p` switch allows to map a complete port range `start-end:start-end`, the `-d` switch allows to daemonize the container and the `--name` switch allows to name the container:  

```bash
docker container run -d -p 1443:443 -p 8099:8099 -p 4800-4900:4800-4900 --name edgeConnector softingindustrial/edgeconnector-840d
```
For further information about supported command line options please refer to the [official Docker command line documentation](https://docs.docker.com/engine/reference/commandline/run/)

### Stop the Docker container

The module container can be stopped by the following command:
```bash
docker container stop edgeConnector
```
Please refer to the [official Docker command line documentation](https://docs.docker.com/engine/reference/commandline/container_stop/) for more details.

### Start the Docker container
If the module container was stopped and not removed, it can be started again from its last state:
```bash
docker container start edgeConnector
```
Please refer to the [official Docker command line documentation](https://docs.docker.com/engine/reference/commandline/container_start/) for more details.


### Remove the Docker container

The module container can be removed at any time:
```bash
docker container rm -f edgeConnector
```
After removing the container its last state is lost.
Please refer to the [official Docker command line documentation](https://docs.docker.com/engine/reference/commandline/container_rm/) for more details.

### Configuration Volume

Optionally a Docker volume to store the configuration permanently could be created:

```bash
docker volume create edge-connector-config
```

In this case the container should be started like this, using the volume:

```bash
docker container run -d -v edge-connector-config:/config -p 1443:443 -p 8099:8099 -p 4800-4900:4800-4900 --name edgeConnector softingindustrial/edgeconnector-840d
```

## Configuration

The configuration part, which is common for all kinds of dataFEED edgeConnector modules is described in the [Configuration](../common/configuration.md) chapter.

### Siemens SINUMERIK 840D cConnection Configuration

dataFEED edgeConnector 840D provides an interface to connect and fetch data from the Siemens SINUMERIK 840D series controllers.

To configure a Siemens SINUMERIK 840D connection, navigate to **Connectivity -> PLC -> Siemens SINUMERIK 840D** as depicted in the navigation tree below:

![sinumerik 840d_navigation](../documentation_pics/s840d_navigation.png)

The page provides an overview of the currently configured connections including the **Name**, the **IP address**, the connection **NCK Status**, the **PLC Status** and the **Enabled** state.  
![sinumerik 840d_overview](../documentation_pics/s840d_overview.png)  


| Column Name | Information Details |
| :-- | :-- |
| Name | Connection name as defined at creation time |
| IP Address | IP Address or host name of the PLC |
| Status NCK | Describes the state of the NCK connection<brA>The connection state can be `Connected` if the connection to the NCK is established; `Disconnected` if there is no connection to the NCK or it could be `Disabled` if the connection to the NCK was not configured for this entry.<br>The connection status is dynamically updated every 2 seconds. |
| Status PLC | State of the PLC connection<br>The connection state can be `Connected` if the connection to the PLC is established; `Disconnected` if there is no connection to the PLC or it could be `Disabled` if the connection to the PLC was not configured for this entry.<br>The connection status is dynamically updated every 2 seconds. |
| Enabled | Configuration state of the PLC connection<br>Possible values are `Enabled` or `Disabled`. <br>Note: Clicking on the current configuration state icon would trigger a state toggle: Enabled -> Disabled; Disabled -> Enabled. <br>When in Disabled state both the NCK and PLC connections are disabled. When Enabled only the connection types initially configured for this connection are enabled. |

From the title bar of the connection overview table a new connection can be added and existing connections can be either edited or deleted.  

- To add a new connection click the ![Add Connection](../documentation_pics/add_connection.png) button.  
- To edit an existing connection, first select it from the overview table and click the ![Edit Connection](../documentation_pics/edit_connection.png) button.  
- To delete an existing connection, first select it from the overview table and click the ![Delete Connection](../documentation_pics/delete_connection.png) button.  

Adding a new connection and editing an existing connection, each open the same page. The only difference is, that for an existing connection the **Connection Name** property can not be changed.

![S840D connection settings](../documentation_pics/s840d_connection_settings_basic.png)

The configuration parameters are described below:

| Parameter Name        | Default Value                 | Description                                                  |
| --------------------- | ----------------------------- | ------------------------------------------------------------ |
| Connection Name       | <empty>                         | Connection name as it will show up in the connection overview page<br>It must be unique and can only be assigned when adding a new connection.<br>Note: The following characters are not supported in this field:  **# ^ < > / $** |
| NCK Connection        |                               | Controls whether the NCK Connection for this 840D connection is enabled or not.<br>Ticking the checkbox enables the connection and allows the user to upload a custom AWL symbol file. Uploading a symbol file is optional. In case no AWL file is uploaded a generic symbol file is used by the module. The default AWL symbol file is intended for SINUMERIK 840D SL series devices. For SINUMERIK 840D PL series devices a custom AWL symbol file like [Standard_pl.awl](Standard_pl.awl) needs to be uploaded.  |
| PLC Connection        |                               | Controls whether the PLC Connection for this 840D connection is enabled or not.<br>Ticking the checkbox enables the connection and allows the user to upload a custom SDFI symbol file. Uploading a symbol file is optional. In case no SDFI file is uploaded a generic symbol file is used by the module. |
| PLC Address           | empty                         | Address of the target device (SINUMERIK 840D)<br>This is either an IP address or a hostname. |
| Select Address Spaces | AllConnection<br>AddressSpace | Destination aggregation address space used to store the address space corresponding to this PLC connection.<br>It is possible to create additional aggregation address spaces by filling in the desired address space name in the input field and clicking the **Add** button. All available address spaces are visible in a list and can be selected as destination address space for the OPC UA Client connection by checking the corresponding checkbox.<br>For more details about the OPC UA Server functionality and configuration please refer to the [OPC UA Configuration](../common/opcua.md) documentation. |

#### Siemens SINUMERIK 840D Connection Advanced Configuration

![S840d connection settings advanced](../documentation_pics/s840d_connection_settings_advanced.png)

The advanced configuration page of a SINUMERIK 840D connection allows to change the following settings:

| Parameter Name       | Default Value       | Description                                                  |
| -------------------- | ------------------- | ------------------------------------------------------------ |
| TCP Port             | 102                 | Port used to connect to the target device (SINUMERIK 840D)<br>This should remain on the default value. |
| NCK TSAP Selection   | Simatic 840D SL NCK | This allows to switch between the TSAP for **SINUMERIK 840D SL**, **SINUMERIK 840D PL** or a user defined TSAP. |
| NCK TSAP Destination | empty               | Input field for customized TSAP setting<br>Allowed input are hexadecimal digits, e.g.: `02 01`, `2 1`, `0201`. |
| PLC TSAP Selection   | Simatic 840D SL PLC | This allows to switch between the TSAP for **SINUMERIK 840D SL**, **SINUMERIK 840D PL** or a user defined TSAP. |
| PLC TSAP Destination | empty               | Input field for customized TSAP setting<br>Allowed input are hexadecimal digits, e.g.: `02 01`, `2 1`, `0201`. |
| Enable NCU Alarm     | Disabled            | Enables or disables the subscriptions of NCU and PLC alarms from the SINUMERIK 840D<br>The alarms are provided in two growing string arrays within the OPC UA Namespace. |

#### PLC Address Space Configuration by SDFI File

The symbolic names of the PLC S7 data need to be provided in an `*.sdfi` file.
You can generate the `*.SDFI` file with the Softing dataFEED Exporter tool.
This tool uses the STEP7 or TIA Portal project files as input and allows you to select one PLC S7 to generate the `*.SDFI` file which contains the symbol definition.
Proceed as follows to convert and import symbol files:
	1. Download [dataFEED Exporter](https://data-intelligence.softing.com/products/iot-gateways/datafeed-exporter/#tx-dftabs-tabContent2) to that PC where the PLC configuration software (STEP7 or TIA Portal V13) is installed.
	2. Execute the installation file and follow the instructions from the installation wizard.
	3. Run dataFEED Exporter.
	4. Follow thedataFEED Exporter  instructions to load and convert your STEP7 or TIA Portal symbol files.
	5. Save the converted `*.SDFI` file to your PC.
	6. Upload the `*.SDFI` file within the [Siemens SINUMERIK 840D connection configuration](#siemens-sinumerik-840d-connection-configuration).

#### NCK Address Space definition by awl file

The creation of `.awl` files is described in ![uaGate840D_AdditionalVariables_C_EN_190801_L_100.pdf](uaGate840D_AdditionalVariables_C_EN_190801_L_100.pdf).

## OPC UA Server

The OPC UA Server functionality and configuration is described in the document about the [OPC UA Configuration](../common/opcua.md).

## Licenses

### Softing License
The dataFEED edgeConnectors come with a time limited and functionality unlimited demo mode.
The demo is immediately started when the module starts up without a valid license.
The demo mode will expire after 72 hours and the module stops working.  
To remove the time limitation of the demo mode the module must be licensed.
The dataFEED edgeConnectors use a floating license mechanism.
A working floating license server is required to have the module successfully licensed.  

Please read [Licenses/README.md](../Licenses/README.md) for further details.

### Softing License

The activation of the connector license from Softing is described in [Licenses/SoftingLicenseServer](../Licenses/SoftingLicenseServer/README.md).

#### License Server Connection Configuration

Please read [Licenses/README.md](../Licenses/README.md#license-server-connection-configuration) for further details.

### Open Source Licenses

For the licenses of the open source components used in the connector images, please read [Licenses/OpenSourceLicenses.md](../Licenses/OpenSourceLicenses.md).
