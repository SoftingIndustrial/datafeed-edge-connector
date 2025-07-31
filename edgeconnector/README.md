# **dataFEED edgeConnector**

Softing´s **dataFEED edgeConnector** is a containerized PLC and CNC
connectivity module adding OPC UA Server and MQTT (Pub/Sub) functionality.

It is possible to connect up to 20 PLCs and/or CNCs including from 
Siemens, Allen-Bradley, Modbus TCP, FANUC CNC, and Sinumerik 840D controllers.


## Supported Operating Systems

**dataFEED edgeConnector** can be used on any Docker host that can
execute Linux Docker containers based on an x86_64, ARM64, and ARMV7 architecture.

**📝 Note:** Fanuc CNC controller only works on x86_64 and ARMV7 platforms.

## Default Settings

The default settings are described at the [Default Settings page](../common/defaults.md).

## Running **dataFEED edgeConnector**

In order to run **dataFEED edgeConnector** a working Docker environment
is required.
For Docker installation instructions please refer to the
[official Docker installation documentation](https://docs.docker.com/install/)

### Pulling the Image

The Docker images are provided through a public registry.
To get the latest Docker image you need to pull the image from
[https://hub.docker.com/r/softingindustrial/edgeconnector](https://hub.docker.com/r/softingindustrial/edgeconnector):

```bash
docker image pull softingindustrial/edgeconnector:latest
```

### Running the Docker Container

After the Docker image has been pulled, a Docker container can be started.
The webserver and OPC UA Server of the module have to be exposed on the host
machine if **dataFEED edgeConnector** shall be accessed from outside
the dockerized environment.

To start **dataFEED edgeConnector** with the default ports mapped 1:1
to the host machine:

```bash
docker container run -d -p 443:443 -p 4897:4897 --name edgeConnector softingindustrial/edgeconnector
```
The `-p` switch allows to map a complete port range `start-end:start-end`,
the `-d` switch allows to daemonize the container and the `--name` switch
allows to name the container.

The above example can be adapted to match the needs of your environment.
For example, if your host already runs a webserver and the HTTPS port is
blocked, the command can be adjusted to expose the HTTPS port of **dataFEED
edgeConnector** on a different port:

```bash
docker container run -d -p 1443:443 -p 4897:4897 --name edgeConnector softingindustrial/edgeconnector
```

#### Running with HTTP

By default **dataFEED edgeConnector** is configured to allow only HTTPS access to its web-based configuration interface. If in certain situations, and after a thorough security assessment and acknowledging all security risks, it is decided that HTTP communication is necessary, then this can be achieved by defining the environment variable ENABLE_HTTP_CONFIG.

```bash
docker container run -d -p 443:443 -p 8099:8099 -p 4897:4897 --name edgeConnector -e ENABLE_HTTP_CONFIG="ON" softingindustrial/edgeconnector
```

The `-p` switch allows to map a complete port range `start-end:start-end`,
the `-d` switch allows to daemonize the container and the `--name` switch
allows to name the container:  

```bash
docker container run -d -p 1443:443 -p 4800-4900:4800-4900 --name edgeConnector softingindustrial/edgeconnector
```

#### Running with specified timezone

The `-e` or `--env` switch allows to set environment variables in the container.
For setting a timezone the variable `TZ` must be passed with a valid `TZ database name`.

```bash
docker container run -d -p 1443:443 -p 4800-4900:4800-4900 --name edgeConnector -e TZ=Europe/Berlin softingindustrial/edgeconnector
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

### Persistent Volumes

Optionally a Docker volume can be created to allow the configuration to be stored permanently.  In this scenario, before starting the edgeConnector, these volumes should be created with the following commands:

```bash
docker volume create edge-connector-config
docker volume create edge-connector-mqtt
```

In this case the container should be started like this, using the volume:

```bash
docker container run -d -v edge-connector-config:/config -v edge-connector-mqtt:/mqtt -p 1443:443 -p 4897:4897 --name edgeConnector softingindustrial/edgeconnector
```

## Stack (Advance setting)

If the environment where you plan to run your container has an option to create a stack/compose file, an example can be found here for this purpose.

[Docker Compose File](./docker-compose.yaml)

## Configuration

The configuration part, which is common for all kinds of
**dataFEED edgeConnector** modules is described at the
[Configuration page](../common/configuration.md).

### Connection Configurations
  * [SIMATIC S7-1200 / S7-1500](./Controller_Connection_Configurations/Simatic_S7-1200_and_S7-1500_configuration.md)
  * [SIMATIC S7-300 / S7-400](./Controller_Connection_Configurations/Simatic_S7-1200_and_S7-1500_configuration.md)
  * [ControlLogix/CompactLogix](./Controller_Connection_Configurations/Allen-Bradley-PLC_configuration.md)
  * [FANUC CNC](./Controller_Connection_Configurations/Fanuc_CNC_configuration.md)
  * [Modbus TCP](./Controller_Connection_Configurations/Modbus_TCP_configuration.md)
  * [Siemens SINUMERIK 840D](./Controller_Connection_Configurations/Sinumerik_840D_configuration.md)



## OPC UA Server

The OPC UA Server functionality and configuration is described at the
[OPC UA Configuration page](../common/opcua.md).

## Licenses

### Softing License

**dataFEED edgeConnector**'s scope of delivery includes a time-limited
and functionaly unlimited demo mode.
The demo mode is started immediately once the module has been started without a
valid license.
It will expire after 72 hours and **dataFEED edgeConnector** stops
working.  
To remove the time limitation of the demo mode **dataFEED edgeConnector**
must be licensed.
**dataFEED edgeConnector** uses a floating license mechanism.
A working floating license server is required to have **dataFEED edgeConnector
Siemens** successfully licensed.  

Please see the [License README page](../Licenses/README.md) for further details.

The license activation for **dataFEED edgeConnector** is described at the
[README page](../Licenses/SoftingLicenseServer/README.md) of the Softing License
Server.

#### License Server Connection Configuration

Please see the section
[License Server Connection Configuration](../Licenses/README.md#license-server-connection-configuration)
of the License README file for further details.

### Open Source Licenses

For the license information of the open source components used by
**dataFEED edgeConnector**, please see the
[Open Source page](../Licenses/OpenSourceLicenses.md).
