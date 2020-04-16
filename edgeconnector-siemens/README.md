# dataFEED edgeConnectors

## Indroduction
dataFEED edgeConnectors is a family of applications that provide connectivity to PLCs of different vendors.
dataFEED edgeConnectors are packaged as a docker image. Each application consists of a webserver for configuration, a protocol driver to connect a PLC and an OPCUA server for data access.

### Supported Operating Systems
Any docker host that can execute Linux docker containers based on an x86_64 architecture.

### Defaults
The application uses the following default settings.

Web interface username and password:  

| username | password |
| :-: | :-: |
| admin | admin |

The ports in use by the different services:  

| Service | Port |
| :-- | --: |
| web interface HTTP | 8099 |
| web interface HTTPS | 443 |
| OPC UA server endpoint | 4897 |

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
For further information about supported commandline options please refer to the [official documentation](https://docs.docker.com/engine/reference/commandline/run/)

### Stop the docker container
The application container can be stopped at any time.
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
After the docker container has been successfully started the dataFEED edgeConnector application runtime can be configured via the web interface. To connect to the web interface of the application point a browser to the address of the system executing the docker application. For exmaple:  

| With TLS | Without TLS |
| --- | --- |
| https://localhost:1443 | http://localhost:8099 |

### Login
A Login page is shown. If this is the first time running the application use the [default credentials](documentation#defaults)  
![login](../documentation_pics/login.png)

### Status
On top of each page an application information summary is presented.  
![toprow_status](../documentation_pics/toprow_status.png)  
The status displays if the application is in running or in halted mode. It also includes infromation about the current license state. If the application is running in demo mode, the `DEMO` keyword is appended to the status.
The user that is currently logged in is presented in separate information box.
The Logout button. Use this to logout the current user, close the session and return to the [login page](documentation#login)  

### Navigation
On the left hand side a navigation pane is provided to switch between the different configuration sections.  
![navpane](../documentation_pics/navpane.png)

### Connectivity Section 
The connectivity section contains the configuration sections for OPCUA and PLC related settings.  

  - [Siemens S7 1200/1500 connection configuration](./connection-to-s7-1200-1500.md)
  - [Sinumerik 840d](./connection-to-sinumerik-840d.md)

### General Section
The general section contains several subsections related to different configuration aspects of the application that don't fit into any of the other main sections.

#### Licenses
The dataFEED edgeConnectors come with a time limited and functionality unlimited demo mode. The demo is immediately started when the application starts up without a valid license. The demo mode will expire after 72 hours and the application stops working.  
To remove the time limitaion of the demo mode the application can be licensed. The dataFEED edgeConnectors use a flaoting license mechanism. A [working floating license server](documentation#floating-license-server) is required to have the application successfully licensed.  
##### License Server Configuration
In the `General -> Licenses -> License Server Configuration` section the floating license server can be specified.  
![license_serverconfig](../documentation_pics/license_serverconfig.png)  
If the `Enable` checkbox is activated, the address and port of a floating license server can be specified. The address can either be a hostname or IP address. Use the `Save` button to save the configuration.  
A restart of the application is required to activate a license for the application.  
The application will only consume a license from the floating license server if it requires a license, for example if a connection is configured and enabled.  

#### Overview
The `General -> Licenses -> Overview` section is an information page, showing the current status of the license.  
![license_overview](../documentation_pics/license_overview.png)

In addition to the general license state presented in the [status bar](#status) it provides a detailed overview of the licensed feature and the amount of total and available resources for each licensed feature.  

| Type | Total | Available |
| --- | --- | --- |
| The licensed feature. If this is a demo license, the `DEMO` keyword is appended | Total number of resources for this feature | Number of available resources for this feature |  
