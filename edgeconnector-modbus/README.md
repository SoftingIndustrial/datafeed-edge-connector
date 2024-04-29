# **dataFEED edgeConnector Modbus**

Softing´s **dataFEED edgeConnector Modbus** is a containerized Modbus TCP
connectivity module adding OPC UA Server and MQTT Publisher functionality.

It is possible to connect up to 20 Modbus TCP compatible devices.

## Supported Operating Systems

**dataFEED edgeConnector Modbus** can be used on any Docker host that can
execute Linux Docker containers based on an x86_64 architecture.

## Default Settings

The default settings are described on the [Default Settings page](../common/defaults.md).

## Running **dataFEED edgeConnector Modbus**

To run **dataFEED edgeConnector Modbus** a working Docker environment
is required.
For Docker installation instructions please refer to the
[official Docker installation documentation](https://docs.docker.com/install/)

### Pulling the Image

The Docker images are provided through a public registry.
To get the latest Docker image you need to pull the image from
[https://hub.docker.com/r/softingindustrial/edgeconnector-modbus](https://hub.docker.com/r/softingindustrial/edgeconnector-modbus):

```bash
docker image pull softingindustrial/edgeconnector-modbus:latest
```

### Running the Docker Container

After the Docker image has been pulled, a Docker container can be started.
The web server and OPC UA Server of the module have to be exposed on the host
machine if **dataFEED edgeConnector Modbus** shall be accessed from outside
the dockerized environment.

By default **dataFEED edgeConnector Siemens** is configured to allow only HTTPS access to its web-based configuration interface. If in certain situations, and after a thorough security assessment and acknowledging all security risks, it is decided that HTTP communication is necessary, then this can be achieved by defining the environment variable ENABLE_HTTP_CONFIG.

```bash
docker container run -d -p 443:443 -p 8099:8099 -p 4897:4897 --name edgeConnector -e ENABLE_HTTP_CONFIG="ON" softingindustrial/edgeconnector-modbus
```

To start **dataFEED edgeConnector Modbus** with the default ports mapped 1:1
to the host machine:

```bash
docker container run -p 443:443 -p 4897:4897 softingindustrial/edgeconnector-modbus
```

The above example can be adapted to match the needs of your environment.
For example, if your host already runs a webserver and the HTTPS port is
blocked, the command can be adjusted to expose the HTTPS port of **dataFEED
edgeConnector Modbus** on a different port:

```bash
docker container run -p 1443:443 -p 4897:4897 softingindustrial/edgeconnector-modbus
```

The `-p` switch allows mapping a complete port range `start-end:start-end`,
the `-d` switch allows to daemonize the container and the `--name` switch
allows to name the container:  

```bash
docker container run -d -p 1443:443 -p 4800-4900:4800-4900 --name edgeConnector softingindustrial/edgeconnector-modbus
```

#### Running with specified timezone

The `-e` or `--env` switch allows to set environment variables in the container.
For setting a timezone the variable `TZ` must be passed with a valid `TZ database name`.

```bash
docker container run -d -p 1443:443 -p 4800-4900:4800-4900 --name edgeConnector -e TZ=Europe/Berlin softingindustrial/edgeconnector-modbus
```

For further information about supported command line options please refer to the
[Run section](https://docs.docker.com/engine/reference/commandline/run/) of the
official Docker command line documentation.

### Stopping the Docker Container

The module container can be stopped by the following command:

```bash
docker container stop edgeConnector
```

Please refer to the
[Stop section](https://docs.docker.com/engine/reference/commandline/container_stop/)
of the official Docker command line documentation for more details.

### Starting the Docker Container

If the module container was stopped and not removed, it can be started again
from its last state:

```bash
docker container start edgeConnector
```

Please refer to the
[Start section](https://docs.docker.com/engine/reference/commandline/container_start/)
of the official Docker command line documentation for more details.

### Removing the Docker Container

The module container can be removed at any time:

```bash
docker container rm -f edgeConnector
```

After removing the container its last state is lost.
Please refer to the
[Remove section](https://docs.docker.com/engine/reference/commandline/container_rm/)
of the official Docker command line documentation for more details.

### Configuration and MQTT-data Volumes

Optionally a Docker volume can be created to store the configuration permanently:

```bash
docker volume create edge-connector-config
docker volume create edge-connector-mqtt
```

In this case, the container should be started like this, using the volume:

```bash
docker container run -d -v edge-connector-config:/config -v edge-connector-mqtt:/mqtt -p 1443:443 -p 4800-4900:4800-4900 --name edgeConnector softingindustrial/edgeconnector-modbus
```

## Configuration

The configuration part, which is common for all kinds of
**dataFEED edgeConnector** modules are described at the
[Configuration page](../common/configuration.md).

### Modbus TCP Connection Configuration

To configure a connection to a Modbus device, navigate to
**Connectivity** -> **PLC** -> **Modbus** in the navigation tree
as depicted below:

![modbus_navigation](../documentation_pics/modbus_navigation.png)

The page provides an overview of the currently configured connections including
its
**Name**, its **IP Address**, its connection **Status** and its **Enabled**
status.

| Column Name | Information Details                                                                                                                         |
| :--         | :--                                                                                                                                         |
| Name        | Connection name as defined at creation time                                                                                                 |
| IP Address  | IP address or hostname of device                                                                                                              |
| Status      | Status of connection                                                                                                                    |
|             | The connection status can be `Connected` if the connection to the device is established or `Disconnected` if there is no connection to the device |
|             | The connection status is dynamically updated every 2 seconds.                                                                               |
| Enabled     | Configuration status of the connection                                                                                                  |
|             | Possible values are `Enabled` or `Disabled`.                                                                                                |
|             | **Note:**                                                                                                                                   |
|             | Clicking the current configuration status icon triggers a state toggle: *Enabled* -> *Disabled* respectively *Disabled* -> *Enabled*        |

From the title bar of the connection overview table, a new connection can be added, and existing connections can either be edited or deleted.  

- To add a new connection click the **Add Connection**
  ![Add Connection](../documentation_pics/add_connection.png) button.  
- To edit an existing connection, first select it from the overview table
  and click the **Edit Connection**
  ![Edit Connection](../documentation_pics/edit_connection.png) button.
- To delete an existing connection, first select it from the overview
  table and click the **Delete Connection**
  ![Delete Connection](../documentation_pics/delete_connection.png) button.  

Adding a new connection and editing an existing connection, both open an
identical page. The only difference is, that for an existing connection the
**Connection Name** property cannot be changed.  

![modbus_connection_settings_basic](../documentation_pics/modbus_connection_settings_basic.png)

The configuration parameters are described below:

| Parameter Name        | Default Value                 | Description                                                  |
| --------------------- | ----------------------------- | ------------------------------------------------------------ |
| Connection Name       | \<empty\>                     | Connection name as it will show up in the connection overview page|
| | |The connection name has to be unique and can only be assigned when adding a new connection.|
| | |**Note:** |
| | |The following characters are not supported in the **Connection Name** field:  *# ^ < > / $* |
| Enabled               | *Enabled*                     | Instructs **dataFEED edgeConnector Modbus** to either *Enable* (checked) or *Disable* (unchecked) the currently configured connection. |
| Txt-File              |                               | An ASCII text file with the address-space definition to upload, see [Modbus Item Syntax](./Modbus-Item-Syntax.md) |
| Address           | \<empty\>                     | Address of the target device. This is either an IP address or a hostname. |
| Select Address Spaces | AllConnection | Destination aggregation address space used to store the address space corresponding to this connection |
| | AddressSpace | It is possible to create additional aggregation address spaces by filling in the desired address space name in the input field and clicking the **Add** button. All available address spaces are visible in a list and can be selected as destination address space for the OPC UA Client connection by checking the corresponding checkbox. |
| | | For more details about the OPC UA Server functionality and configuration please refer to the [OPC UA Configuration page](../common/opcua.md). |

## OPC UA Server

The OPC UA Server functionality and configuration are described in the
[OPC UA Configuration page](../common/opcua.md).

## Licenses

### Softing License

**dataFEED edgeConnector Modbus**'s scope of delivery includes a time-limited
and functionally unlimited demo mode.
The demo mode is started immediately once the module has been started without a
valid license.
It will expire after 72 hours and **dataFEED edgeConnector Modbus** stops
working.  
To remove the time limitation of the demo mode **dataFEED edgeConnector Modbus**
must be licensed.
**dataFEED edgeConnector Modbus** uses a floating license mechanism.
A working floating license server is required to have **dataFEED edgeConnector
Modbus** successfully licensed.  

Please see the [License README page](../Licenses/README.md) for further details.

The license activation for **dataFEED edgeConnector Modbus** is described in the
[README page](../Licenses/SoftingLicenseServer/README.md) of the Softing License
Server.

#### License Server Connection Configuration

Please see the section
[License Server Connection Configuration](../Licenses/README.md#license-server-connection-configuration)
of the License README file for further details.

### Open Source Licenses

For the license information of the open-source components used by
**dataFEED edgeConnector Modbus**, please see the
[Open Source page](../Licenses/OpenSourceLicenses.md).
