# **dataFEED edgeConnector Modbus**

Softing´s **dataFEED edgeConnector Modbus** is a containerized Modbus TCP
connectivity module adding OPC UA Server functionality.

It is possible to connect up to 20 Modbus TCP compatible PLCs.

## Supported Operating Systems

**dataFEED edgeConnector Modbus** can be used on any Docker host that can
execute Linux Docker containers based on an x86_64 architecture.

## Default Settings

The default settings are described at the [Default Settings page](../common/defaults.md).

## Running **dataFEED edgeConnector Modbus**

In order to run **dataFEED edgeConnector Modbus** a working Docker environment
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
The webserver and OPC UA Server of the module have to be exposed on the host
machine if **dataFEED edgeConnector Modbus** shall be accessed from outside
the dockerized environment.

To start **dataFEED edgeConnector Modbus** with the default ports mapped 1:1
to the host machine:

```bash
docker container run -p 443:443 -p 8099:8099 -p 4897:4897 softingindustrial/edgeconnector-modbus
```

The above example can be adapted to match the needs of your environment.
For example, if your host already runs a webserver and the https port is
blocked, the command can be adjusted to expose the https port of **dataFEED
edgeConnector Modbus** on a different port:

```bash
docker container run -p 1443:443 -p 8099:8099 -p 4897:4897 softingindustrial/edgeconnector-modbus
```

The `-p` switch allows to map a complete port range `start-end:start-end`,
the `-d` switch allows to daemonize the container and the `--name` switch
allows to name the container:  

```bash
docker container run -d -p 1443:443 -p 8099:8099 -p 4800-4900:4800-4900 --name edgeConnector softingindustrial/edgeconnector-modbus
```

#### Running with specified timezone
The `-e` or `--env` switch allows to set environment variables in the container.
For setting a timezone the variable `TZ` must be passed with a valid `TZ database name`.

```bash
docker container run -d -p 1443:443 -p 8099:8099 -p 4800-4900:4800-4900 --name edgeConnector -e TZ=Europe/Berlin softingindustrial/edgeconnector-modbus
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

### Configuration Volume

Optionally a Docker volume can be created to store the configuration permanently:

```bash
docker volume create edge-connector-config
```

In this case the container should be started like this, using the volume:

```bash
docker container run -d -v edge-connector-config:/config -p 1443:443 -p 8099:8099 -p 4800-4900:4800-4900 --name edgeConnector softingindustrial/edgeconnector-modbus
```

## Configuration

The configuration part, which is common for all kinds of
**dataFEED edgeConnector** modules is described at the
[Configuration page](../common/configuration.md).


## OPC UA Server

The OPC UA Server functionality and configuration is described at the
[OPC UA Configuration page](../common/opcua.md).

## Licenses

### Softing License

**dataFEED edgeConnector Modbus**'s scope of delivery includes a time-limited
and functionaly unlimited demo mode.
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

The license activation for **dataFEED edgeConnector Modbus** is described at the
[README page](../Licenses/SoftingLicenseServer/README.md) of the Softing License
Server.

#### License Server Connection Configuration

Please see the section
[License Server Connection Configuration](../Licenses/README.md#license-server-connection-configuration)
of the License README file for further details.

### Open Source Licenses

For the license information of the open source components used by
**dataFEED edgeConnector Modbus**, please see the
[Open Source page](../Licenses/OpenSourceLicenses.md).
