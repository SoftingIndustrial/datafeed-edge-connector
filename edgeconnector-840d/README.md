# **dataFEED edgeConnector 840D**

Softing´s **dataFEED edgeConnector 840D** is a containerized connectivity module adding OPC UA Server functionality.

It is possible to connect up to 5 Siemens SINUMERIK 840D SL/PL controllers.

## Supported Operating Systems

**dataFEED edgeConnector 840D** can be used on any Docker host that can execute Linux Docker containers based on an x86_64 architecture.

## Default Settings

The default settings are described at the [Default Settings page](../common/defaults.md).

## Physical Connection to SINUMERIK 840D Controller

The different SINUMERIK 840D variants provide different physical connection types:
While SINUMERIK 840D SL offers access by Ethernet interfaces, SINUMERIK 840D PL only provides MPI access.

## Physical Connection to SINUMERIK 840D SL

SINUMERIK 840D SL has 3 Ethernet interfaces:
  1. Ethernet interface *X120* for the device connection to HMIs and keyboards
  2. Ethernet interface *X130* for the company network
  3. Ethernet interface *X127* for service purposes

![Interface Overview](../documentation_pics/OPCUA_activate_006.png)

![Network Configuration](../documentation_pics/OPCUA_activate_009.png)

**dataFEED edgeConnector 840D** uses the SIMATIC S7 communication protocol (TCP/102) of SINUMERIK 840D SL.
By default, this protocol is available at the *X120* interface. Alternatively, it can be enabled for the *X130* interface.

Thus, the host PC running **dataFEED edgeConnector 840D** needs either
  - a physical connection to the *X120* interface and a unique IPv4 address within the corresponding network or
  - a physical connection to the *X130* interface, a unique IPv4 address within the corresponding network as well as the SIMATIC S7 communication protocol explicitly enabled for this interface.

## Physical Connection to SINUMERIK 840D PL

SINUMERIK 840D PL only provides two MPI interfaces for communication. Therefore an Ethernet-to-MPI converter is needed here.

The Ethernet-to-MPI converter translates the RFC-1006 TSAP addresses into MPI addresses.
As a result the default SINUMERIK 840D PL MPI addresses are translated into the following TSAP settings:

  - TSAP NCK (powerline): `03 03`
  - TSAP PLC (powerline): `03 02`

## Running **dataFEED edgeConnector 840D**

In order to run **dataFEED edgeConnector 840D** a working Docker environment is required.
For Docker installation instructions please refer to the [official Docker installation documentation](https://docs.docker.com/install/)

### Pulling the Image

The Docker images are provided through a public registry.
To get the latest Docker image you need to pull the image from [https://hub.docker.com/r/softingindustrial/](https://hub.docker.com/r/softingindustrial/):.
```bash
docker image pull softingindustrial/edgeconnector-840d:latest
```

### Running the Docker Container

After the Docker image has been pulled, a Docker container can be started.
The webserver and OPC UA Server of the module have to be exposed on the host machine if **dataFEED edgeConnector 840D** shall be accessed from outside the dockerized environment.

To start **dataFEED edgeConnector 840D** with the default ports mapped 1:1 to the host machine:
```bash
docker container run -p 443:443 -p 8099:8099 -p 4897:4897 softingindustrial/edgeconnector-840d
```
The above example can be adapted to match the needs of your environment.
For example, if your host already runs a webserver and the https port is blocked, the command can be adjusted to expose the https port of **dataFEED edgeConnector 840D** on a different port:

```bash
docker container run -p 1443:443 -p 8099:8099 -p 4897:4897 softingindustrial/edgeconnector-840d
```
The `-p` switch allows to map a complete port range `start-end:start-end`, the `-d` switch allows to daemonize the container and the `--name` switch allows to name the container:  

```bash
docker container run -d -p 1443:443 -p 8099:8099 -p 4800-4900:4800-4900 --name edgeConnector softingindustrial/edgeconnector-840d
```
For further information about supported command line options please refer to the [Run section](https://docs.docker.com/engine/reference/commandline/run/) of the official Docker command line documentation.

### Stopping the Docker Container

The **dataFEED edgeConnector 840D** container can be stopped by the following command:
```bash
docker container stop edgeConnector
```
Please refer to the [Stop section](https://docs.docker.com/engine/reference/commandline/container_stop/) of the official Docker command line documentation for more details.

### Starting the Docker Container
If the module container was stopped and not removed, it can be started again from its last state:
```bash
docker container start edgeConnector
```
Please refer to the [Start section](https://docs.docker.com/engine/reference/commandline/container_start/) of the official Docker command line documentation for more details.


### Removing the Docker Container

The module container can be removed at any time:
```bash
docker container rm -f edgeConnector
```
After removing the container its last state is lost.
Please refer to the [Remove section](https://docs.docker.com/engine/reference/commandline/container_rm/) of the official Docker command line documentation for more details.

### Configuration Volume

Optionally a Docker volume can be created for storing the configuration permanently:
```bash
docker volume create edge-connector-config
```

In this case the container should be started like this, using the volume:

```bash
docker container run -d -v edge-connector-config:/config -p 1443:443 -p 8099:8099 -p 4800-4900:4800-4900 --name edgeConnector softingindustrial/edgeconnector-840d
```

## Configuration

The configuration part, which is common for all kinds of **dataFEED edgeConnector** modules is described at the [Configuration page](../common/configuration.md).

### Siemens SINUMERIK 840D Connection Configuration

**dataFEED edgeConnector 840D** provides an interface to connect and fetch data from Siemens SINUMERIK 840D series controllers.

To configure a Siemens SINUMERIK 840D connection, navigate to ***Connectivity*** -> ***PLC*** -> ***Siemens SINUMERIK 840D*** in the navigation tree as depicted below:

![sinumerik 840d_navigation](../documentation_pics/s840d_navigation.png)

The page provides an overview of the currently configured connections including its ***Name***, its ***IP address***, its connection ***Status NCK***, its ***Status PLC*** and its ***Enabled*** status.  

![sinumerik 840d_overview](../documentation_pics/s840d_overview.png)  


| Column Name | Information Details |
| :-- | :-- |
| Name | Connection name as defined at creation time |
| IP Address | IP address or host name of PLC |
| Status NCK | Status of NCK connection<br>The connection status can be `Connected` if the connection to the NCK is established; `Disconnected` if there is no connection to the NCK or it can be `Disabled` if the connection to the NCK has not been configured for this entry.<br>The connection status is dynamically updated every 2 seconds. |
| Status PLC | Status of PLC connection<br>The connection status can be `Connected` if the connection to the PLC is established; `Disconnected` if there is no connection to the PLC or it can be `Disabled` if the connection to the PLC has not been configured for this entry.<br>The connection status is dynamically updated every 2 seconds. |
| Enabled | Configuration status of PLC connection<br>Possible values are `Enabled` or `Disabled`.<br>**Note:**<br>Clicking the current configuration status icon triggers a state toggle: *Enabled* -> *Disabled* respectively *Disabled* -> *Enabled*.<br>When in *Disabled* state both the NCK and PLC connections are disabled, when *Enabled* only the connection types initially configured for this connection are enabled. |

From the title bar of the connection overview table a new connection can be added and existing connections can either be edited or deleted.  

- To add a new connection click the ***Add Connection*** ![Add Connection](../documentation_pics/add_connection.png) button.  
- To edit an existing connection, first select it from the overview table and click the ***Edit Connection*** ![Edit Connection](../documentation_pics/edit_connection.png) button.  
- To delete an existing connection, first select it from the overview table and click the ***Delete Connection*** ![Delete Connection](../documentation_pics/delete_connection.png) button.  

Adding a new connection and editing an existing connection, both open an identical page. The only difference is, that for an existing connection the ***Connection Name*** property can not be changed.

![SINUMERIK 840D connection settings](../documentation_pics/s840d_connection_settings_basic.png)

The configuration parameters are described below:

| Parameter Name        | Default Value                 | Description                                                  |
| --------------------- | ----------------------------- | ------------------------------------------------------------ |
| Connection Name       | \<empty\>                     | Connection name as it will show up in the connection overview page<br>The connection name has to be unique and can only be assigned when adding a new connection.<br>**Note:**<br>The following characters are not supported in the ***Connection Name*** field:  *# ^ < > / $* |
| NCK Connection        |                               | Controls whether the NCK Connection for this SINUMERIK 840D connection is enabled or not.<br>Ticking the checkbox enables the connection and allows the user to upload a custom *AWL* symbol file. Uploading a symbol file is optional. In case no *AWL* file is uploaded, a generic symbol file is used by **dataFEED edgeConnector 840D**. The default *AWL* symbol file is intended for SINUMERIK 840D SL series devices. For SINUMERIK 840D PL series devices a custom *AWL* symbol file like [Standard_pl.awl](Standard_pl.awl) needs to be uploaded.  |
| PLC Connection        |                               | Controls whether the PLC Connection for this SINUMERIK 840D connection is enabled or not.<br>Ticking the checkbox enables the connection and allows the user to upload a custom *SDFI* symbol file. Uploading a symbol file is optional. In case no *SDFI* file is uploaded, a generic symbol file is used by **dataFEED edgeConnector 840D**. |
| PLC Address           | \<empty\>                     | Address of the target device (SINUMERIK 840D)<br>This is either an IP address or a hostname. |
| Select Address Spaces | AllConnection<br>AddressSpace | Destination aggregation address space used to store the address space corresponding to this PLC connection<br>It is possible to create additional aggregation address spaces by filling in the desired address space name in the input field and clicking the ***Add*** button. All available address spaces are visible in a list and can be selected as destination address space for the OPC UA Client connection by checking the corresponding checkbox.<br>For more details about the OPC UA Server functionality and configuration please refer to the [OPC UA Configuration page](../common/opcua.md). |

#### Siemens SINUMERIK 840D Connection Advanced Configuration

![S840d connection settings advanced](../documentation_pics/s840d_connection_settings_advanced.png)

The advanced configuration page of a SINUMERIK 840D connection allows to change the following settings:

| Parameter Name       | Default Value       | Description                                                  |
| -------------------- | ------------------- | ------------------------------------------------------------ |
| TCP Port             | 102                 | Port used to connect to the target device (SINUMERIK 840D)<br>The TCP port should remain at the default value. |
| NCK TSAP Selection   | Simatic 840D SL NCK | Allows to switch between the TSAP for SINUMERIK 840D SL, SINUMERIK 840D PL or a user defined TSAP. |
| NCK TSAP Destination | \<empty\>           | Input field for customized TSAP setting<br>Allowed input are hexadecimal digits, e.g. `02 01`, `2 1`, `0201`. |
| PLC TSAP Selection   | Simatic 840D SL PLC | Allows to switch between the TSAP for SINUMERIK 840D SL, SINUMERIK 840D PL or a user defined TSAP. |
| PLC TSAP Destination | \<empty\>           | Input field for customized TSAP setting<br>Allowed input are hexadecimal digits, e.g. `02 01`, `2 1`, `0201`. |
| Enable NCU Alarm     | *Disabled*          | Enables or disables the subscription of NCU and PLC alarms from SINUMERIK 840D<br>The alarms are provided in two growing string arrays within the OPC UA Namespace. |

#### PLC Address Space Configuration By *SDFI* File

The symbolic names of the SIMATIC S7 data need to be provided via an *SDFI* file.
You can generate the *SDFI* file using the Softing **dataFEED Exporter** tool.
This tool uses the STEP 7 or TIA Portal project files as input and allows to select one SIMATIC S7 device to generate the *SDFI* file containing the symbol definition.
Proceed as follows to convert and import symbol files:<br>
	1. Download [**dataFEED Exporter**](https://data-intelligence.softing.com/products/iot-gateways/datafeed-exporter/#tx-dftabs-tabContent2) to that PC where the PLC configuration software (STEP 7 or TIA Portal V13) is installed<br>
	2. Execute the installation file and follow the instructions of the installation wizard<br>
	3. Run **dataFEED Exporter**<br>
	4. Follow the **dataFEED Exporter** instructions to load and convert your STEP 7 or TIA Portal symbol files<br>
	5. Save the converted *SDFI* file to your PC<br>
	6. Upload the *SDFI* file to the [Siemens SINUMERIK 840D connection configuration](#siemens-sinumerik-840d-connection-configuration).

#### NCK Address Space Definition By *AWL* file

The creation of *AWL* files is described in the ![uaGate840D_AdditionalVariables_C_EN_190801_L_100.pdf](uaGate840D_AdditionalVariables_C_EN_190801_L_100.pdf) document.

## OPC UA Server

The OPC UA Server functionality and configuration is described at the [OPC UA Configuration page](../common/opcua.md).

## Licenses

### Softing License
**dataFEED edgeConnector 840D**'s scope of delivery includes a time-limited and functionaly unlimited demo mode.
The demo mode is started immediately once the module has been started without a valid license.
It will expire after 72 hours and **dataFEED edgeConnector 840D** stops working.  
To remove the time limitation of the demo mode **dataFEED edgeConnector 840D** must be licensed.
**dataFEED edgeConnector 840D** uses a floating license mechanism.
A working floating license server is required to have **dataFEED edgeConnector 840D** successfully licensed.  

Please see the [License README page](../Licenses/README.md) for further details.

### Softing License

The license activation for **dataFEED edgeConnector 840D** is described at the [README page](Licenses/SoftingLicenseServer/README.md) of the Softing License Server.

#### License Server Connection Configuration

Please see the section [License Server Connection Configuration](Licenses/README.md#license-server-connection-configuration) of the License README page for further details.

### Open Source Licenses

For the license information of the open source components used by **dataFEED edgeConnector 840D**, please see the [Open Source page](Licenses/OpenSourceLicenses.md).
