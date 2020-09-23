# **dataFEED edgeConnector 840D**

Softing´s **dataFEED edgeConnector 840D** is a containerized connectivity module
adding OPC UA Server functionality.

It is possible to connect up to 5 Siemens SINUMERIK 840D SL/PL controllers.

## Supported Operating Systems

**dataFEED edgeConnector 840D** can be used on any Docker host that can execute
Linux Docker containers based on an x86_64 architecture.

## Supported Controller types

The contoller types **SINUMERIK 840D Solution Line** and **SINUMERIK 840D Power Line** are supported.
Controllers of older types like **SINUMERIK 840** and **SINUMERIK 840C** are not compatible.

## Supported Software versions

**SINUMERIK 840D sl** must have software version V2.7 and higher,
**SINUMERIK 840D pl** must have software version V5.3 and higher.
Information regarding the support of other controller types and software versions can be provided
upon request.

## Default Settings

The default settings are described at the [Default Settings page](../common/defaults.md).

## Physical Connection to SINUMERIK 840D Controller

The different SINUMERIK 840D variants provide different physical connection types:
While SINUMERIK 840D SL offers access by Ethernet interfaces, SINUMERIK 840D PL
only provides MPI access.

## Physical Connection to SINUMERIK 840D SL

SINUMERIK 840D SL has 3 Ethernet interfaces:

1. Ethernet interface *X120* for the device connection to HMIs and keyboards
2. Ethernet interface *X130* for the company network
3. Ethernet interface *X127* for service purposes

![Interface Overview](../documentation_pics/OPCUA_activate_006.png)

![Network Configuration](../documentation_pics/OPCUA_activate_009.png)

![Sinumerik 840D SL](../documentation_pics/sinumerik_840d_sl.png)

| Ethernet interface   | Description                                                                                                   |
| -------------------- | ------------------------------------------------------------------------------------------------------------- |
| X120                 | This Ethernet interface is used for connecting the automation network (operator panel interface).             |
|                      | The interface is not isolated by a firewall, thus, ideally, **dataFEED edgeConnector 840D** is operated using this interface. |
|                      | This interface in **SINUMERIK 840D sl** uses the fixed IP address 192.168.214.1. For connecting to the machine network the gateway then should be configured using a fixed IP address as well(e.g. an IP address higher than 192.168.214.250). |
| X127                 | This Ethernet interface serves exclusively as a service socket (service interface).                           |
|                      | This interface can not be used for connection purposes.                                                       |
| X130                 | This Ethernet interface connects the controller to the factory network (company Ethernet).                    |
|                      | This interface can be used as an alternative interface for connecting **dataFEED edgeConnector 840D**. Here, however, the NCU firewall (port TCP/102) has to be enabled in SINUMERIK Operate to allow **SIMATIC S7** communication.  |

**dataFEED edgeConnector 840D** uses the SIMATIC S7 communication protocol (TCP/102)
of SINUMERIK 840D SL.
By default, this protocol is available at the *X120* interface. Alternatively, it can
be enabled for the *X130* interface.

Thus, the host PC running **dataFEED edgeConnector 840D** needs either

- a physical connection to the *X120* interface and a unique IPv4 address within
  the corresponding network or
- a physical connection to the *X130* interface, a unique IPv4 address within the
  corresponding network as well as the SIMATIC S7 communication protocol explicitly
  enabled for this interface.

## Physical Connection to SINUMERIK 840D PL

**SINUMERIK 840D PL** does not provide an Ethernet interface. Thus, a D-Sub 9 connector plus an
appropriate converter for transforming the **SINUMERIK 840D PL**-specific communication to Ethernet
communication has to be used for connectivity purposes.

The Softing product **echolink S7-compact** supports the PG/MPI to Ethernet conversion and thus is a
suitable converter product.

The Ethernet-to-MPI converter translates the RFC-1006 TSAP addresses into MPI
addresses. As a result the default SINUMERIK 840D PL MPI addresses are
translated into the following TSAP settings:

- TSAP NCK (powerline): `03 03`
- TSAP PLC (powerline): `03 02`

It must be ensured that the **SINUMERIK 840D PL** has been switched on and its communication settings
are correct. Special attention has to be paid to a valid MPI address assignment, preventing double
assignment of MPI addresses in the configuration at all costs. The individual configured addresses can
be determined by checking the hardware configuration of the **SIMATIC STEP 7** project. Usually the MPI
address `30` is not used and thus can be assigned to **echolink S7-compact**.

![Sinumerik 840D PL](../documentation_pics/sinumerik_840d_pl.png)

The **SINUMERIK 840D PL** provides several D-Sub 9 connectors:

| Ethernet interface   | Description                                                                                                   |
| -------------------- | ------------------------------------------------------------------------------------------------------------- |
| X122                 | It is used for connecting the programming or a remote maintenance device (PG interface).                      |
|                      | The interface is recommended for connecting **echolink S7-compact**. It requires its own 24 V power supply, since the connector X122 does not provide any voltage. |
|                      | If a connector is already connected here, **echolink S7-compact** can be plugged on top or in between.        |
| X101                 | It is used for connecting the control panel/operating panel (control panel interface) and is not recommended for the communication via **echolink S7-compact**.    |

## Configure echolink S7-compact

The **echolink S7-compact** configuration is performed in the appropriate configuration page (see the figure below).

The important **echolink S7-compact** settings include:

| Variable                  | Description                                                                                                   |
| ------------------------- | ------------------------------------------------------------------------------------------------------------- |
| IP Address                | Address for reaching **echolink S7-compact**.                                                                 |
|                           | The IP address is freely selectable (e.g. 192.168.214.XXX), but has to be located in the same network as the MACHINE network of **dataFEED edgeConnector 840D**. |
| Baudrate                  | The transmission speed has to be set to 187.5 kBit/s.                                                         |
| Own Station Address       | MPI address of **echolink S7-compact**.                                                                       |
|                           | **Important:** This address must not be used by another station.                                              |
| Set Default Bus Parameter | Click on `MPI` button and use the default parameters.                                                         |

![Configuration echolink S7-compact](../documentation_pics/config_echolinkS7.png)

## Configure **edgeConnector 840D** for using SINUMERIK 840D PL

For connecting to a **SINUMERIK 840D PL** controller type the main difference in the **dataFEED edgeConnector 840D** configuration are the Transport Services Access Point (TSAP) settings.

The **SINUMERIK 840D PL**-specific settings include (see the figure below):

- **IPv4 Address** must correspond to the IP address of **echolink S7-compact** (here: 192.168.1.15).
- **NCK TSAP Selection** `SINUMERIK 840D PL NCK` has to be selected in the dropdown menu.
- **PLC TSAP Selection** `SINUMERIK 840D PL PLC` has to be selected in the dropdown menu.

## Running **dataFEED edgeConnector 840D**

In order to run **dataFEED edgeConnector 840D** a working Docker environment is
required.
For Docker installation instructions please refer to the
[official Docker installation documentation](https://docs.docker.com/install/)

### Pulling the Image

The Docker images are provided through a public registry.
To get the latest Docker image you need to pull the image from
[https://hub.docker.com/r/softingindustrial/](https://hub.docker.com/r/softingindustrial/):.

```bash
docker image pull softingindustrial/edgeconnector-840d:latest
```

### Running the Docker Container

After the Docker image has been pulled, a Docker container can be started.
The webserver and OPC UA Server of the module have to be exposed on the host
machine if **dataFEED edgeConnector 840D** shall be accessed from outside the
dockerized environment.

To start **dataFEED edgeConnector 840D** with the default ports mapped 1:1 to
the host machine:

```bash
docker container run -p 443:443 -p 8099:8099 -p 4897:4897 softingindustrial/edgeconnector-840d
```

The above example can be adapted to match the needs of your environment.
For example, if your host already runs a webserver and the https port is blocked,
the command can be adjusted to expose the https port of **dataFEED edgeConnector 840D**
on a different port:

```bash
docker container run -p 1443:443 -p 8099:8099 -p 4897:4897 softingindustrial/edgeconnector-840d
```

The `-p` switch allows to map a complete port range `start-end:start-end`, the `-d` switch
allows to daemonize the container and the `--name` switch allows to name the container:  

```bash
docker container run -d -p 1443:443 -p 8099:8099 -p 4800-4900:4800-4900 --name edgeConnector softingindustrial/edgeconnector-840d
```

#### Running with specified timezone
The `-e` or `--env` switch allows to set environment variables in the container.
For setting a timezone the variable `TZ` must be passed with a valid `TZ database name`.

```bash
docker container run -d -p 1443:443 -p 8099:8099 -p 4800-4900:4800-4900 --name edgeConnector -e TZ=Europe/Berlin softingindustrial/edgeconnector-840d
```

For further information about supported command line options please refer to the
[Run section](https://docs.docker.com/engine/reference/commandline/run/) of the official
Docker command line documentation.

### Stopping the Docker Container

The **dataFEED edgeConnector 840D** container can be stopped by the following command:

```bash
docker container stop edgeConnector
```

Please refer to the [Stop section](https://docs.docker.com/engine/reference/commandline/container_stop/)
of the official Docker command line documentation for more details.

### Starting the Docker Container

If the module container was stopped and not removed, it can be started again from its last state:

```bash
docker container start edgeConnector
```

Please refer to the [Start section](https://docs.docker.com/engine/reference/commandline/container_start/)
of the official Docker command line documentation for more details.

### Removing the Docker Container

The module container can be removed at any time:

```bash
docker container rm -f edgeConnector
```

After removing the container its last state is lost.
Please refer to the [Remove section](https://docs.docker.com/engine/reference/commandline/container_rm/)
of the official Docker command line documentation for more details.

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

The configuration part, which is common for all kinds of **dataFEED edgeConnector** modules is
described at the [Configuration page](../common/configuration.md).

### Siemens SINUMERIK 840D Connection Configuration

**dataFEED edgeConnector 840D** provides an interface to connect and fetch data from
Siemens SINUMERIK 840D series controllers.

To configure a Siemens SINUMERIK 840D connection, navigate to
**Connectivity** -> **PLC** -> **Siemens SINUMERIK 840D** in the navigation tree as
depicted below:

![sinumerik 840d_navigation](../documentation_pics/s840d_navigation.png)

The page provides an overview of the currently configured connections including its
**Name**, its **IP address**, its connection **Status NCK**, its **Status PLC**
and its **Enabled** status.  

![sinumerik 840d_overview](../documentation_pics/s840d_overview.png)  

| Column Name | Information Details |
| :-- | :-- |
| Name | Connection name as defined at creation time |
| IP Address | IP address or host name of PLC |
| Status NCK | Status of NCK connection |
| | | The connection status can be `Connected` if the connection to the NCK is established; `Disconnected` if there is no connection to the NCK or it can be `Disabled` if the connection to the NCK has not been configured for this entry.|
| | | The connection status is dynamically updated every 2 seconds. |
| Status PLC | Status of PLC connection |
| | The connection status can be `Connected` if the connection to the PLC is established; `Disconnected` if there is no connection to the PLC or it can be `Disabled` if the connection to the PLC has not been configured for this entry.|
| | The connection status is dynamically updated every 2 seconds. |
| Enabled | Configuration status of PLC connection |
| | Possible values are `Enabled` or `Disabled`.|
| | **Note:**|
| | Clicking the current configuration status icon triggers a state toggle: *Enabled* -> *Disabled* respectively *Disabled* -> *Enabled*.|
| | When in *Disabled* state both the NCK and PLC connections are disabled, when *Enabled* only the connection types initially configured for this connection are enabled. |

From the title bar of the connection overview table a new connection can be
added and existing connections can either be edited or deleted.  

- To add a new connection click the **Add Connection**
![Add Connection](../documentation_pics/add_connection.png) button.  
- To edit an existing connection, first select it from the overview table and
click the **Edit Connection** ![Edit Connection](../documentation_pics/edit_connection.png) button.  
- To delete an existing connection, first select it from the overview table
and click the **Delete Connection** ![Delete Connection](../documentation_pics/delete_connection.png) button.  

Adding a new connection and editing an existing connection, both open an
identical page. The only difference is, that for an existing connection the
**Connection Name** property can not be changed.

![SINUMERIK 840D connection settings](../documentation_pics/s840d_connection_settings_basic.png)

The configuration parameters are described below:

| Parameter Name        | Default Value                 | Description                                                  |
| --------------------- | ----------------------------- | ------------------------------------------------------------ |
| Connection Name       | \<empty\>                     | Connection name as it will show up in the connection overview page |
| | | The connection name has to be unique and can only be assigned when adding a new connection.|
| | | **Note:**|
| | | The following characters are not supported in the **Connection Name** field:  *# ^ < > / $* |
| NCK Connection        |                               | Controls whether the NCK Connection for this SINUMERIK 840D connection is enabled or not. |
| | | Ticking the checkbox enables the connection and allows the user to upload a custom *AWL* symbol file. Uploading a symbol file is optional. In case no *AWL* file is uploaded, a generic symbol file is used by **dataFEED edgeConnector 840D**. The default *AWL* symbol file is intended for SINUMERIK 840D SL series devices. For SINUMERIK 840D PL series devices a custom *AWL* symbol file like [Standard_pl.awl](Standard_pl.awl) needs to be uploaded.  |
| PLC Connection        |                               | Controls whether the PLC Connection for this SINUMERIK 840D connection is enabled or not. |
| | | Ticking the checkbox enables the connection and allows the user to upload a custom *SDFI* symbol file. Uploading a symbol file is optional. In case no *SDFI* file is uploaded, a generic symbol file is used by **dataFEED edgeConnector 840D**. |
| PLC Address           | \<empty\>                     | Address of the target device (SINUMERIK 840D). This is either an IP address or a hostname. |
| Select Address Spaces | AllConnection |
| | AddressSpace | Destination aggregation address space used to store the address space corresponding to this PLC connection|
| | | It is possible to create additional aggregation address spaces by filling in the desired address space name in the input field and clicking the **Add** button. All available address spaces are visible in a list and can be selected as destination address space for the OPC UA Client connection by checking the corresponding checkbox.|
| | | For more details about the OPC UA Server functionality and configuration please refer to the [OPC UA Configuration page](../common/opcua.md). |

#### Siemens SINUMERIK 840D Connection Advanced Configuration

![S840d connection settings advanced](../documentation_pics/s840d_connection_settings_advanced.png)

The advanced configuration page of a SINUMERIK 840D connection allows to change
the following settings:

| Parameter Name       | Default Value       | Description                                                                                        |
| -------------------- | ------------------- | ------------------------------------------------------------                                       |
| TCP Port             | 102                 | Port used to connect to the target device (SINUMERIK 840D)                                         |
|                      |                     | The TCP port should remain at the default value.                                                   |
| NCK TSAP Selection   | Simatic 840D SL NCK | Allows to switch between the TSAP for SINUMERIK 840D SL, SINUMERIK 840D PL or a user defined TSAP. |
| NCK TSAP Destination | \<empty\>           | Input field for customized TSAP setting                                                            |
|                      |                     | Allowed input are hexadecimal digits, e.g. `02 01`, `2 1`, `0201`.                                 |
| PLC TSAP Selection   | Simatic 840D SL PLC | Allows to switch between the TSAP for SINUMERIK 840D SL, SINUMERIK 840D PL or a user defined TSAP. |
| PLC TSAP Destination | \<empty\>           | Input field for customized TSAP setting                                                            |
|                      |                     | Allowed input are hexadecimal digits, e.g. `02 01`, `2 1`, `0201`.                                 |
| Enable NCU Alarm     | *Disabled*          | Enables or disables the subscription of NCU and PLC alarms from SINUMERIK 840D                     |
|                      |                     | The alarms are provided in two growing string arrays within the OPC UA Namespace.                  |

#### PLC Address Space Configuration by *.SDFI* File

See [sdfi](../common/sdfi.md)

#### NCK Address Space Definition by *.AWL* file

The creation of *.AWL* files is described in the
![uaGate840D_AdditionalVariables_C_EN_190801_L_100.pdf](uaGate840D_AdditionalVariables_C_EN_190801_L_100.pdf) document.

#### GUD variables

In the NCU numerical control unit of the SINUMERIK 840D CNC controller, users can define global variables for individual use in the machine tool according to their requirements. These GUD (Global User Data) variables can be accessed using **uaGate 840D** and **dataFEED edgeConnector 840D**. For this purpose, it is necessary to define a structure with the following components and their initial values according to the respective GUD variable in the associated `.AWL` file:

```awl
STRUCT
	SYNTAX_ID : BYTE := B#16#82;
	bereich_u_einheit : BYTE;
	spalte : WORD;
	zeile : WORD := W#16#1;
	bausteintyp : BYTE;
	ZEILENANZAHL : BYTE := B#16#1;
	typ : BYTE; 
	laenge : BYTE;
END_STRUCT ;
```

The individual lines of the structure have the following structure:

```awl
<Component Name> : <Data Type BYTE | WORD> := <Initial Value>;
```

All components of the GUD variable have to be initialized with a value according to the description below.

The following initial values are used for the individual components:

| Component Name       | Value                         | Description                                                                                        |
| -------------------- | ----------------------------- | ------------------------------------------------------------                                       |
| SYNTAX_ID            | B#16#82                       | The component SYNTAX_ID has always to be set to this initial value.                                |
|                      |                               | This value must not be changed.                                                                    |
| bereich_u_einheit    | NCK area: B#16#1              | The component bereich_u_einheit specifies the validity area of the GUD variable. The validity areas NCK (entire numerical control)|
|                      | Channel area: `B#16#41`      | and Channel (one channel of the numerical control) are supported.                                  |
| spalte               |                               | This component specifies the line in which the GUD variable is displayed in the SINUMERIK 840D human machine interface.|
| zeile                | W#16#1                        | The component zeile has always to be set to this initial value.                                    |
|                      |                               | This value must not be changed.                                                                    |
| bausteintyp          | data block SGUD: B#16#17      | The component bausteintyp specifies the data block type.                                           |
|                      | data block MGUD: B#16#2D      |                                                                                                    |
|                      | data block UGUD: B#16#2E      |                                                                                                    |
|                      | data block GUD4: B#16#2F      |                                                                                                    |
|                      | data block GU5D: B#16#30      |                                                                                                    |
|                      | data block GUD6: B#16#31      |                                                                                                    |
|                      | data block GUD7: B#16#32      |                                                                                                    |
|                      | data block GUD8: B#16#33      |                                                                                                    |
|                      | data block GUD9: B#16#34      |                                                                                                    |
|                      | data block SGUD GD1: B#16#34  |                                                                                                    |
| ZEILENANZAHL         | B#16#1                        | The component ZEILENANZAHL has always to be set to this initial value.                             |
|                      |                               | This value must not be changed.                                                                    |
| typ                  | data type Real: B#16#f        | The component typ determines the data type of the GUD variable.                                    |
|                      | data type Char: B#16#3        |                                                                                                    |
|                      | data type String: B#16#13     |                                                                                                    |
|                      | data type Bool: B#16#1        |                                                                                                    |
|                      | data type Integer: B#16#7     |                                                                                                    |
|                      | data type Axis: B#16#13       |                                                                                                    |
| laenge               | data type Real: B#16#8        | The component laenge defines the length of the GUD variable.                                       |
|                      | data type Char: B#16#1        |                                                                                                    |
|                      | data type String:             | For the data type String the length of the string plus 1 has to be assigned as length.(E.g. the value B#16#26 has to be assigned as length for a string with the length 25.)|
|                      | data type Bool: B#16#1        |                                                                                                    |
|                      | data type Integer: B#16#4     |                                                                                                    |
|                      | data type Axis: B#16#4        |                                                                                                    |

#### Add GUD variables to *.AWL* file

GUD variables of the SINUMERIK 840D SL/PL are defined by Siemens, the manufacturer
or by the user in `*.def` files. An example definition file is
provided as [GUD4.DEF](./GUD4.DEF).

You need to copy your `*.def` files from your SINUMERIK 840D
to your PC with `perl` installed.

With the `perl` script [gudVarsIntoAwl.pl](gudVarsIntoAwl.pl) the `*.def`
files could be converted into a partial `*.awl` file.
For example with the following commands:

```bash
./gudVarsIntoAwl.pl GUD4 < GUD4.DEF >> gud.awl
./gudVarsIntoAwl.pl MGUD < MGUD.DEF >> gud.awl
./gudVarsIntoAwl.pl UGUD < UGUD.DEF >> gud.awl
```

**Note:** The datatype `Frame` is not supported, due to the not determined data size.

The generated `gud.awl` file needs to be pasted into the `*.awl` file which has
been generated by the `ncvarselector`.
The content of the `gud.awl` file needs to be inserted just before the trailing

```

 END_STRUCT ;

BEGIN
END_DATA_BLOCK
```

of the `*.awl` file. This file needs to be uploaded into the
**dataFEED edgeConnector 840D**, as described above.

## OPC UA Server

The OPC UA Server functionality and configuration is described at the
[OPC UA Configuration page](../common/opcua.md).

## Licenses

### Softing License

**dataFEED edgeConnector 840D**'s scope of delivery includes a time-limited
and functionaly unlimited demo mode.
The demo mode is started immediately once the module has been started without
a valid license.
It will expire after 72 hours and **dataFEED edgeConnector 840D** stops working.  
To remove the time limitation of the demo mode **dataFEED edgeConnector 840D**
must be licensed.
**dataFEED edgeConnector 840D** uses a floating license mechanism.
A working floating license server is required to have **dataFEED edgeConnector 840D**
successfully licensed.  

Please see the [License README page](../Licenses/README.md) for further details.

The license activation for **dataFEED edgeConnector 840D** is described at the
[README page](../Licenses/SoftingLicenseServer/README.md) of the Softing License
Server.

#### License Server Connection Configuration

Please see the section
[License Server Connection Configuration](../Licenses/README.md#license-server-connection-configuration)
of the License README page for further details.

### Open Source Licenses

For the license information of the open source components used by
**dataFEED edgeConnector 840D**, please see the
[Open Source page](../Licenses/OpenSourceLicenses.md).
