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
| Status | Describes the state of the PLC connection; can be either Connected when the connection to the PLC is established or Disconnected when there is no connection to the PLC. The connection status is dynamically updated each 2 seconds. |
| Enabled | Describes the configuration state of the PLC connection. Possible values are Enabled or Disabled.<br>Note: Clicking on the current configuration state icon would trigger a state toggle: Enabled -> Disabled; Disabled -> Enabled |

From the title bar of the connection overview table a new connection can be added and existing connections can be either edited or deleted.  

- To add a new connection click the ![add_connection](../documentation_pics/add_connection.png) button.  
- To edit an existing connection, first select it from the overview table and click the ![edit_connection](../documentation_pics/edit_connection.png) button. 
- To delete an existing connection, first select it from the overview table and click the ![delete_connection](../documentation_pics/delete_connection.png) button.  

Adding a new connection and editing an existing connection, each open the same page. The only difference is, that for an existing connection the **Connection Name** property can not be changed.  
![s71200-1500_connection_settings_basic](../documentation_pics/s7_connection_settings_basic.png)  
The **Connection Name** must be unique and can only be assigned when adding a new connection.  
The state of **Enabled** checkbox determines if the connection shall be used.  
The **PLC Address** holds the address of the target device (S7 1200/1500 PLC). This is either an IP address or a hostname. 

# Licenses

## Softing License

The activation of the connector license from Softing is described in [Licenses/SoftingLicenseServer](../Licenses/SoftingLicenseServer/README.md).

## Open Source Licenses

For the licenses of the open source components used in the connector images, please read [Licenses/OpenSourceLicenses.md](../Licenses/OpenSourceLicenses.md).
