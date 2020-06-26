# edgeConnector Siemens

Softing dataFEED edgeConnector Siemens is a containerized SIMATIC S7 connectivity module adding OPC UA Server functionality.

It is possible to connect up to 20 Siemens S7-1200 or S7-1500 PLCs including optimized data blocks.
The Namespace configuration is done by browsing SIMATIC STEP 7 and TIA Portal variables. 

### Supported Operating Systems

Any docker host that can execute Linux docker containers based on an x86_64 architecture.

### Defaults

The default settings are described in [defaults.md](../common/defaults.md).

## Running dataFEED edgeConnectors

In order to run the dataFEED edgeConnectors a working docker environment is required.
For docker installation instructions please refer to the [official documentation](https://docs.docker.com/install/)

### Pulling the image

The docker images are provided through a public registry.
To get the latest docker image you need to login to the docker registry and pull the image.
```bash
docker image pull softingindustrial/edgeconnector-siemens:latest
```

### Run the docker container

After the docker image has been pulled, a docker container can be started.
The web server and OPCUA server of the application have to be exposed on the host machine if the dataFEED edgeConnectors shall be accessed from outside the dockerized environment.

To start the dataFEED edgeConnector with the default ports mapped 1:1 to the host machine:
```bash
docker container run -p 443:443 -p 8099:8099 -p 4897:4897 softingindustrial/edgeconnector-siemens
```
The above example can be adapted to match the needs of your environment. For example if your host already runs a webserver and the https port is blocked, the command can be adjusted to expose the https port of dataFEED edgeConnector application on a different port.

```bash
docker container run -p 1443:443 -p 8099:8099 -p 4897:4897 softingindustrial/edgeconnector-siemens
```
To map a complete port range use the `-p` switch with a range `start-end:start-end`.  
To daemonize the container use the `-d` switch.  
To name the container use the `--name` switch.  

```bash
docker container run -d -p 1443:443 -p 8099:8099 -p 4800-4900:4800-4900 --name edgeConnector softingindustrial/edgeconnector-siemens
```
For further information about supported command line options please refer to the [official documentation](https://docs.docker.com/engine/reference/commandline/run/)

### Stop the docker container

The application container can be stopped with the following command:
```bash
docker container stop edgeConnector
```
Please refer to [official documentation](https://docs.docker.com/engine/reference/commandline/container_stop/) for more details.

### Start the docker container
If the application container was stopped and not removed, it can be started again from its last state.
```bash
docker container start edgeConnector
```
Please refer to [official documentation](https://docs.docker.com/engine/reference/commandline/container_start/) for more details.


### Remove the docker container

The application container can be removed at any time. After removing the container its last state is lost.
```bash
docker container rm -f edgeConnector
```
Please refer to [official documentation](https://docs.docker.com/engine/reference/commandline/container_rm/) for more details.

### Configuration Volume

Optionally a docker volume to store the configuration permanently could be created:

```bash
docker volume create edge-connector-config
```

In this case the container should be started like this, to use the volume:

```bash
docker container run -d -v edge-connector-config:/config -p 1443:443 -p 8099:8099 -p 4800-4900:4800-4900 --name edgeConnector softingindustrial/edgeconnector-siemens
```

## Configuration

The configuration part, which is common for all kinds of edge connectors is described in [configuration.md](../common/configuration.md).

### Siemens S7 1200/1500 connection configuration

dataFEED edgeConnnector Siemens provides an interface to connect and fetch data from a Siemens S7 1200 or 1500 series controllers.

To configure a connection to a Siemens S7 1200 or S7 1500 controller, navigate to **Connectivity -> PLC -> Siemens S7 1200/1500** as depicted in the navigation tree below:

![s7_navigation](../documentation_pics/s7_navigation.png)

The page provides an overview of the currently configured connections including the **Name**, the **IP Address**, the connection **Status** and the **Enabled** state.
![s7_overview](../documentation_pics/s7_overview.png)

| Column name | Information details |
| :-- | :-- |
| Name | Connection name as defined at creation time. |
| IP Address | IP Address or host name of the PLC |
| Status | Describes the state of the PLC connection; can be either Connected when the connection to the PLC is established or Disconnected when there is no connection to the PLC. The connection status is dynamically updated each 2 seconds. <br> Note: This field changes to "Simulation" when a simulated connection is added (See below for description of the Simulation mode). |
| Enabled | Describes the configuration state of the PLC connection. Possible values are Enabled or Disabled.<br>Note: Clicking on the current configuration state icon would trigger a state toggle: Enabled -> Disabled; Disabled -> Enabled |

From the title bar of the connection overview table a new connection can be added and existing connections can be either edited or deleted.  

- To add a new connection click the ![add_connection](../documentation_pics/add_connection.png) button.  
- To edit an existing connection, first select it from the overview table and click the ![edit_connection](../documentation_pics/edit_connection.png) button. 
- To delete an existing connection, first select it from the overview table and click the ![delete_connection](../documentation_pics/delete_connection.png) button.  

Adding a new connection and editing an existing connection, each open the same page. The only difference is, that for an existing connection the **Connection Name** property can not be changed.  
![s71200-1500_connection_settings_basic](../documentation_pics/s7_connection_settings_basic.png)

The configuration parameters are described below:

| Parameter name        | Default value                 | Description                                                  |
| --------------------- | ----------------------------- | ------------------------------------------------------------ |
| Connection Name       | empty                         | Defines the connection name as it will show up in the connection overview page. It must be unique and can only be assigned when adding a new connection.<br>Note: The following characters are not supported in this field:  **# ^ < > / $** |
| Enabled               | Enabled                       | Instructs the dataFEED edgeConnector to either enable (checked) or disable (unchecked) the currently configured PLC connection. |
| PLC Address           | empty                         | The address of the target device (S7 1200/1500 PLC). This is either an IP address or a hostname. |
| Select Address Spaces | AllConnection<br>AddressSpace | Defines the destination aggregation address space used to store the address space corresponding to this PLC connection.<br>It is possible to create additional aggregation address spaces by filling in the desired address space name in the input field and clicking on the **Add** button. All available address spaces are visible in a list and can be selected as destination address space for the OPC UA client connection by checking the corresponding checkbox.<br>For more details about the OPC UA Server functionality and configuration please read the document about the [OPC UA Configuration](../common/opcua.md). |

## Simulation Mode

The edgeConnector Siemens supports simulation mode for the S7 1200/1500 controller, which means that it provides a few ways of automatically generating tag values in a similarly structured standard address space as a real PLC. All UA services are supported as for a real PLC, Browse, Subscribe, Read and Write.

The available value simulation types are Random, Incremental (increasing to the data type's maximum, then starting from its minimum again), Sawtooth (increasing to the maximum and after reaching it decreasing to its minimum, then increasing again, and so on) and Waveform with anomalies (a Sine wave form of generating data, periodically adding a random anomaly). These simulation types are supported only for the basic data types and arrays of these data types, currently.

The mapping of these simulation types to the different basic data types is as follows:
- Boolean: Random
- SByte: Sawtooth
- Byte: Sawtooth
- Int16: Incremental
- UInt16: Random
- Int32: Incremental
- UInt32: Incremental
- Int64: Random
- UInt64: Random
- Float: Waveform (250 ms update rate; min = -50, max = 50; contains anomalies)
- Double: Waveform (500 ms update rate, min = -500, max = 500; does not contain anomalies)
- String: Random (length of 10; containing alphanumeric, '_' and '-' characters)
- DateTime: Random (between 1970 and 2100)

Notes:
- Where it is not specified, the update rate is 1000 milliseconds
- The minimum and maximum values for all numerical data types (except where specified otherwise) are their corresponding values (e.g. SByte: between -128 and 127)
- Floating point data types are restricted as specified above for more practical visualization purposes

Limitations:
- Currently, there is no customization options regarding neither the type of simulation used for a data type or tag, nor the parameters of the simulation types
- The value generation process cannot be stopped when a simulated connection is enabled; this means that when writing to a tag the written value will be lost at the next data change, because the simulation will generate a new data value. In case of Incremental and Sawtooth simulation types the next value will depend on the written value

### Configuration of a simulated connection

For adding a connection which starts in Simulation mode the following steps are necessary:
- To add a new simulated connection click the ![add_connection](../documentation_pics/add_connection.png) button.  
- Enter a unique name in the **Connection Name** field
- Go to the **Advanced Settings** tab on the same page
- At the bottom check the **Simulation** check box
- Switch back to the **Connection Settings** page
- Press the **Save** button

After a short time the simulator will start generating values for that connection, which can be browsed and monitored with a client application by subscribing to some tags with the above mentioned data types.

Also, the **Address Spaces** section will show a new node with the name of the new simulated connection, which can be browsed and filtered from that moment on.

Other notes and restrictions:
- A simulated connection cannot be edited in any way after it has been added, none of its settings can be changed. All the fields are disabled after pressing the **Save** button
- Such a connection can only be deleted using the ![delete_connection](../documentation_pics/delete_connection.png) button  
- Any number of simulated connections can be added, but their address space will look the same, they are derived from the same standard PLC address space
- All simulated connections are subject to the general licensing mechanisms, so they will use a license when added, and yield it back when deleted
- A simulated connection cannot get out of Simulation mode, nor can a real PLC connection be changed to Simulation mode

When visualizing one of each of the simulation types, it may look like this:
<img src="../documentation_pics/sitewise_dashboard_with_edgeConnector_source.png" alt="SiteWise Dashboard with Simulated values" width="1200"/>

## OPC UA Server

The OPC UA Server functionality and configuration is described in the document about the [OPC UA Configuration](../common/opcua.md).

## Licenses

### Softing License
The dataFEED edgeConnectors come with a time limited and functionality unlimited demo mode.
The demo is immediately started when the application starts up without a valid license.
The demo mode will expire after 72 hours and the application stops working.  
To remove the time limitation of the demo mode the application must be licensed.
The dataFEED edgeConnectors use a floating license mechanism.
A working floating license server is required to have the application successfully licensed.  

Please read [Licenses/README.md](../Licenses/README.md) for further details.

### Softing License

The activation of the connector license from Softing is described in [Licenses/SoftingLicenseServer](../Licenses/SoftingLicenseServer/README.md).

#### License Server Connection Configuration

Please read [Licenses/README.md](../Licenses/README.md#license-server-connection-configuration) for further details.

### Open Source Licenses

For the licenses of the open source components used in the connector images, please read [Licenses/OpenSourceLicenses.md](../Licenses/OpenSourceLicenses.md).
