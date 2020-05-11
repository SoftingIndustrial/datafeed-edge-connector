# edgeConnector 840D

Softing dataFEED edgeConnector 840D is a containerized connectivity module adding OPC UA Server functionality.

It is possible to connect up to 5 Siemens Sinumerik 840d SL/PL devices.

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
docker image pull softingindustrial/edgeconnector-840d:latest
```

### Run the docker container

After the docker image has been pulled, a docker container can be started.
The web server and OPCUA server of the application have to be exposed on the host machine if the dataFEED edgeConnectors shall be accessed from outside the dockerized environment.

To start the dataFEED edgeConnector with the default ports mapped 1:1 to the host machine:
```bash
docker container run -p 443:443 -p 8099:8099 -p 4897:4897 softingindustrial/edgeconnector-840d
```
The above example can be adapted to match the needs of your environment. For example if your host already runs a webserver and the https port is blocked, the command can be adjusted to expose the https port of dataFEED edgeConnector application on a different port.

```bash
docker container run -p 1443:443 -p 8099:8099 -p 4897:4897 softingindustrial/edgeconnector-840d
```
To map a complete port range use the `-p` switch with a range `start-end:start-end`.  
To daemonize the container use the `-d` switch.  
To name the container use the `--name` switch.  
```bash
docker container run -d -p 1443:443 -p 8099:8099 -p 4800-4900:4800-4900 --name edgeConnector softingindustrial/edgeconnector-840d
```
For further information about supported commandline options please refer to the [official documentation](https://docs.docker.com/engine/reference/commandline/run/)

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
docker container run -d -v edge-connector-config:/config -p 1443:443 -p 8099:8099 -p 4800-4900:4800-4900 --name edgeConnector softingindustrial/edgeconnector-840d
```

## Configuration

The configuration part, which is common for all kinds of edge connectors is described in [configuration.md](../common/configuration.md).

### Siemens Sinumerik 840d connection configuration

dataFEED edgeConnector 840D provides an interface to connect and fetch data from the Siemens SINUMERIK 840D series.

To configure a Siemens SINUMERIK 840D connection, navigate to **Connectivity -> PLC -> Siemens SINUMERIK 840** as depicted in the navigation tree below:

![sinumerik 840d_navigation](../documentation_pics/s840d_navigation.png)

The page provides an overview of the currently configured connections including the **Name**, the **IP address**, the connection **NCK Status**, the **PLC Status** and the **Enabled** state.  
![sinumerik 840d_overview](../documentation_pics/s840d_overview.png)  


| Column name | Information details |
| :-- | :-- |
| Name | Connection name as defined at creation time. |
| IP Address | IP Address or host name of the PLC |
| Status NCK | Describes the state of the NCK connection. The connection state can be Connected when the connection to the NCK is established; Disconnected when there is no connection to the NCK or it could be Disabled when the connection to the NCK was not configured for this entry. The connection status is dynamically updated each 2 seconds. |
| Status PLC | Describes the state of the PLC connection. The connection state can be Connected when the connection to the PLC is established; Disconnected when there is no connection to the PLC or it could be Disabled when the connection to the PLC was not configured for this entry. The connection status is dynamically updated each 2 seconds. |
| Enabled | Describes the configuration state of the PLC connection. Possible values are Enabled or Disabled. Note: Clicking on the current configuration state icon would trigger a state toggle: Enabled -> Disabled; Disabled -> Enabled. When in Disabled state both the NCK and PLC connections are disabled. When Enabled only the connection types initially configured for this connection are enabled. |

From the title bar of the connection overview table a new connection can be added and existing connections can be either edited or deleted.  
To add a new connection click the ![add_connection](../documentation_pics/add_connection.png) button.  
To edit an existing connection, first select it from the overview table and click the ![edit_connection](../documentation_pics/edit_connection.png) button.  
To delete an existing connection, first select it from the overview table and click the ![delete_connection](../documentation_pics/delete_connection.png) button.  

Adding a new connection and editing an existing connection, each open the same page. The only difference is, that for an existing connection the **Connection Name** property can not be changed.
![S840D connection settings](../documentation_pics/s840d_connection_settings_basic.png)
The **Connection Name** must be unique and can only be assigned when adding a new connection.  
To enable the **NCK Connection** the checkbox must be ticked. This enables the file upload input to select a custom AWL symbol file. Uploading a symbol file is optional. In case no AWL file is uploaded a generic symbol file is used by the application.
To enable the **PLC Connection** the checkbox must be ticked. This enables the file upload input to select a custom SDFI symbol file. Uploading a symbol file is optional. In case no SDFI file is uploaded a generic symbol file is used by the application.
The **PLC Address** holds the address of the target device (Sinumerik 840d). This is either an IP address or a hostname.  

#### Siemens Sinumerik 840d connection advanced configuration

![S840d connection settings advanced](../documentation_pics/s840d_connection_settings_advanced.png)

The advanced configuration page of 840d connection allows to change the following settings:

  1. **Destination port:** This should remain on the default value 102.
  2. **NCK TSAP Selection:** This allows to switch between the TSAP for "Simatik 840D SL" and a user defined TSAP.
      This setting should only be changed, if a connection to "Simatik 840D PL" or other none Solution Line series device is desired.
  3. **User-Defined:** Input field for customized TSAP setting. Allowed input are hexa-dezimal diggits. E.g.:
     - `02 01`
	 - `2 1`
	 - `0201`
  4. **PLC TSAP Selection:** This allows to switch between the TSAP for "Simatik 840D SL" and a user defined TSAP.
      This setting should only be changed, if a connection to "Simatik 840D PL" or other none Solution Line series device is desired.
  5. **User-Defined:** Input field for customized TSAP setting. Allowed input are hexa-dezimal diggits. E.g.:
     - `02 01`
	 - `2 1`
	 - `0201`
  6. **Enable NCU Alarm:** This checkbox enables or disables the subscriptions of NCU alarms from the Simatic 840D.

# Licenses

## Softing License

The activation of the connector license from Softing is described in [Licenses/SoftingLicenseServer](../Licenses/SoftingLicenseServer/README.md).

## Open Source Licenses

For the licenses of the open source components used in the connector images, please read [Licenses/OpenSourceLicenses.md](../Licenses/OpenSourceLicenses.md).
