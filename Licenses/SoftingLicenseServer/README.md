# **Softing License Server**

## Introduction

The License Server is a Softing software package used for activating software licenses for other Softing products.

**Table of Contents**

  1. [**License Server for native Windows**](#license-server-for-native-windows)
  2. [**License Server Enduser Tools**](#license-server-enduser-tools)
  3. [**License Server in Containerized Linux**](#license-server-in-containerized-linux)
  4. [**License Server in Containerized Linux with Windows Host**](#bind-mounts-for-windows)


## License Server for native Windows

![](LM_available_licenses.png)

**Softing License Server** is a machine used to host network software licenses (also called floating licenses or shared licenses) that are installed locally on an individual users' machines. The network licenses can be shared among many users and/or applications.

**Softing License Server** fulfills requests to run a network application if the required license is available. When the network license is released (for example, a user closes the application), the license is moved to the license server's available license pool and is made available for other checkout requests.

Install **Softing License Manager** V4 on a PC with Internet connection from [https://data-intelligence.softing.com/products/edge-connector-docker/datafeed-edgeconnector-siemens/#tx-dftabs-tabContent2](https://data-intelligence.softing.com/products/edge-connector-docker/datafeed-edgeconnector-siemens/#tx-dftabs-tabContent2).

### Activate License with Internet Connection

License activation requires a computer with Internet access. If the connection to the Internet requires a proxy server, please make sure the connection settings are properly configured using the ***Proxy settings...*** button at the ***Settings*** page of the ***Configuration*** section.

  * First of all, please enable the ***Provide all PC-Id’s*** checkbox at the ***Settings page***<br>
    ![](LM_provide_all_pc_id.png)
  * Please verify that **Softing License Manager** V4 can correctly communicate with the **Softing License Server** by performing a connection test using the ***Test server connection...*** button.<br>
    ![](LM_test_connection.png)
    For properly activating a license the connection test has to return the status code *200*. If the connection test is not successful, please double-check the proxy settings.<br>
    If you cannot set up a connection, please refer to the [Activate License Without Internet Connection section](#activate-license-without-internet-connection).<br>
  * If the connection test is successful, please proceed with the license activation by selecting the desired PC to be used for the activation process from the ***PC-Id*** selection list, enter the license key in the ***License Key*** field and click the ***Activate license*** button.<br>![](LM_activate_license.png)
  * After the successful activation the license will be shown in the list of the available licenses.<br>Please note that the license type (*Local* resp. *Network*) will be automatically provided by the ***Softing License Server***, based on the license key. A *Local* license can be activated either using machine HostIDs (here the term *Local* is shown next to the license) or using an attached USB HASP Dongle (here the term *Dongle* is shown next to the license).<br>![](LM_license_is_activated.png)
  * If your floating license server is not running on the current machine (with Internet access) or the path to **Softing License Server** provided by the **Softing License Manager** V4 configuration file (`C:\Program Files (x86)\Softing\LicenseManager\SLMenduserApp.xml`) is not correct, **Softing License Server** has to be restarted manually.<br>Please note that the license activation for remote floating license servers is not possible by providing the HostIDs. Rather the export of the HostID is required as described in the [Activate License Without Internet Connection chapter](#activate-license-without-internet-connection).<br>![](LM_restart_license_server.png)
  * The [LM-X License Server](https://docs.x-formation.com/display/LMX/LM-X+License+Server) is listening to both, the TCP and UDP ports 6200. Please create a Windows Defender Firewall - Inbound Rule for port 6200 for both TCP and UDP protocol types in order to allow other PCs to connect to this floating license server.<br>![](LM_inbound_rule.png)


### Activate License Without Internet Connection

  * Export the PC Id of the PC on which the Softing License Server runs onby clicking the ***Export PC-Ids ...*** button. The license will then be activated using the exported HostID.<br>
    ![](LM_export_pc_ids.png)
  * Install **Softing License Manager** V4 on another PC with Internet connection from [https://data-intelligence.softing.com/products/edge-connector-docker/datafeed-edgeconnector-siemens/#tx-dftabs-tabContent2](https://data-intelligence.softing.com/products/edge-connector-docker/datafeed-edgeconnector-siemens/#tx-dftabs-tabContent2)).
  * Make sure that the PC to be used to activate the license has a working Internet connection by performing a connection test (***Test server conenction ...*** button, see [Activate License With Internet Connection chapter](#activate-license-with-internet-connection)).
  * Use the previously exported PC Id together with the valid license key received in the order.<br>
    ![](LM_activate_license_for_another_pc.png)
  * Click the ***Generate and export license file...*** button and save the generated license file for transfer to the offline machine.
  * Import the *.LIC* file by clicking the ***Import license file ...*** button on the PC from which the HostID has been exported previously.<br>
    ![](LM_import_license_file.png)
  * Restart **Softing License Server** and refresh the list of the available licenses using the reload button (button with green circular arrow in Softing License Manager).<br>
    ![](LM_restart_license_server.png)
  * After a successful activation **Softing License Manager** displays the recently imported license.

## License Server Enduser Tools

LM-X end-user tools provide the functionality for the floating (network) licensing mechanism. These tools are deployed by the **Softing License Manager** installer (`C:\Program Files (x86)\Softing\LicenseManager\LicenseServer\`)

| Tool | File Name | Documentation |
| :--- | :-------- | :------------ |
| [LM-X License Server](https://docs.x-formation.com/display/LMX/LM-X+License+Server) | `lmx-serv.exe` | [https://docs.x-formation.com/display/LMX/LM-X+License+Server](https://docs.x-formation.com/display/LMX/LM-X+License+Server) |
| [LM-X End-user Utility](https://docs.x-formation.com/display/LMX/LM-X+End-user+utility) | `lmxendutil.exe` | [https://docs.x-formation.com/display/LMX/LM-X+End-user+utility](https://docs.x-formation.com/display/LMX/LM-X+End-user+utility) |
| [LM-X End-user Configuration Tool](https://docs.x-formation.com/display/LMX/LM-X+End-user+Configuration+Tool) | `lmxconfigtool.exe` | [https://docs.x-formation.com/display/LMX/LM-X+End-user+Configuration+Tool](https://docs.x-formation.com/display/LMX/LM-X+End-user+Configuration+Tool) |

  * LM-X License Server will automatically run as a Windows Service after a successful installation of **Softing License Manager**, if the Softing License Server component be selected during the installation process.
    - The user can stop the Softing License Server Windows Service and instead run it from the command line.
	- LM-X License Server is listening on both, the TCP and UDP ports 6200. Please create a Windows Defender Firewall - Inbound Rule for port 6200 for both TCP and UDP protocol types in order to allow other PCs to connect to this floating license server.
  * The additional LM-X End-user Utility can be used to display the HostIDs and the statistics, and lists what licenses are currently being used by which users on a specific license server. It also allows the restart and shutdown of the license server.

## License Server in Containerized Linux

The Docker container on Docker Hub can be found at [this link](https://hub.docker.com/r/softingindustrial/floating-license-server).

To start the container, run the following command. The image will be pulled and the container started.

```bash
docker container run\
    --name licsrv\
    -p 6200:6200\
    --volume $(pwd)/license_files:/licsrv/licenses\
    softingindustrial/floating-license-server
```

**NOTE**: Replace `licsrv` with the name of the container used in a real-world scenario.

### Retrieve the license server Host information

To activate licenses, the Host Id provided by the license server must be used. The Host Id is specific to the host on which the server is run.

Steps to get the Host Id from the containerized licensing server:

1. From container logs:

    ```bash
    docker container logs licsrv
    ```
    Output:

    ```
    ...
    [2021-05-26 13:38:30] HostId: a476a2de-ca10-11e9-80d8e98fa9baf9c85
    ...
    ```

    The line above shows the Host Id information.

1. From log file: the command `docker exec -it licsrv cat /licsrv/lmx-serv.log` will show the same output.

### Steps to activate a license using Softing's web interface

1. Log in to [Softing web portal](https://industrial.softing.com/login)

1. Navigate to **Licenses->Register License** 

1. Fill in the purchased license activation key in the `License key` field

1. Fill in the Host Id information retrieved as indicated in the previous sub-chapter

1. Click `Register License`

1. Download and store the generate `*.lic` file

### Activating newly copied licenses

The downloaded `*.lic` files need to be copied to the mounted volume of the Docker container. This is how the license server will use them, stored in the persistent volume.

Once the new license files are copied to the shared volume, the container needs to be restarted in order for the new files to be activated.

```
docker restart licsrv
```
### Technical Data

| Name            | Value                     |
| :-------------  | :-----------------------  |
| Environment     | Ubuntu 18.04 LTS          |
| Port            | 6200                      |
| Licenses Volume | /licsrv/licenses          |
| Config File     | /licsrv/lmx-serv.cfg      |
| Log File        | /licsrv/lmx-serv.log      |
| Address         | IP-Address from Host      |

### Logs

To view the logs of the Docker container run the following commands:

1. If the container is run with the `-it` (interactive) option, it will display all standard output and error messages in the terminal. If it is run with the `-d` option (daemon), the output logs can be retrieved via a docker command:

    ```bash
    docker container logs licsrv
    ```

    The output should look similar to the following, in both cases (interactive and daemon):
    ```
    [2021-05-26 13:38:30] LM-X License Server v4.9.23 build 74220bf8 on softing_licsrv (Linux_x64)
    [2021-05-26 13:38:30] Copyright (C) 2002-2020 X-Formation. All rights reserved.
    [2021-05-26 13:38:30] Website: https://www.lm-x.com https://www.x-formation.com
    [2021-05-26 13:38:30] License server has pid 1.
    [2021-05-26 13:38:30] Serving licenses for vendor SOFTING.
    [2021-05-26 13:38:30] WARNING: It is not recommended to run license server as root.
    [2021-05-26 13:38:30]
    [2021-05-26 13:38:30] License server using TCP IPv4 port 6200.
    [2021-05-26 13:38:30] License server using TCP IPv6 port 6200.
    [2021-05-26 13:38:30] License server using UDP IPv4 port 6200.
    [2021-05-26 13:38:30] Reading licenses...
    [2021-05-26 13:38:30] License file(s):
    [2021-05-26 13:38:30] /licsrv/licenses/<license_file>.lic
    [2021-05-26 13:38:30] Log file path: /licsrv/lmx-serv.log
    [2021-05-26 13:38:30] Log to stdout: Yes
    [2021-05-26 13:38:30] Log format: Normal
    [2021-05-26 13:38:30] Configuration file path: /licsrv/config/lmx-serv.cfg
    [2021-05-26 13:38:30] Serving following features:
    [2021-05-26 13:38:30] edgeConnector (v1.0) (5 license(s)) shared on: HOST USER VIRTUAL license type: additive
    [2021-05-26 13:38:30]
    [2021-05-26 13:38:30] HostId: a476a2de-ca10-11e9-80d8e98fa9baf9c85
    [2021-05-26 13:38:30] To administrate the license server go to your enduser directory and run the License Server Client.
    [2021-05-26 13:38:30] Ready to serve...
    ```

1. In the output above the path to the licensing server log file. The command `docker exec -it licsrv cat /licsrv/lmx-serv.log` will show the same output, extracting the content of the log file from the container.

### Volumes

**License files**

The Docker image from which the container is created is configured with a default internal Docker volume of `/licsrv/licenses`, into which the license files can be copied for the server to activate. 

This internal volume can be mapped to the host machine in two ways:

- **Docker [Volumes](https://docs.docker.com/storage/volumes/)**:

    ```bash
    docker container run\
        --name licsrv\
        -p 6200:6200\
        --volume licenses:/licsrv/licenses\
        softingindustrial/floating-license-server
    ```

    In the second line from the bottom a Docker volume is mapped to the internal container volume. If the volume does not exist, it will be created.

    A Docker volume can be created by `docker volume create --name licenses` beforehand, if needed.

    To copy files to the volume execute the following (files will be stored in an internal Docker directory on the host):

    ```
    docker cp ./*.lic licsrv:/licsrv/licenses
    ```

- **Docker [Bind Mounts](https://docs.docker.com/storage/bind-mounts/)**:

    ```
    docker container run\
        --name licsrv\
        -p 6200:6200\
        --volume $(pwd)/softing/licenses:/licsrv/licenses\
        softingindustrial/floating-license-server
    ```

    To copy files to the volume the license files need to be copied normally to the specified directory (i.e.: `$(pwd)/softing/licenses` in the example).

    In the second line from the bottom a Docker bind mount is mapped to the internal container volume. The full path must be given to the directory on the host, which will be mounted as a bind mount.

**Server configuration file**

Similarly to the license files volumes, the container provides a way to expose the configuration file as well.

The default volume path for this is `/licsrv/config` and the file name is `lmx-serv.cfg`.

A number of parameters can be configured, based on the official X-Formation [documentation](https://docs.x-formation.com/display/LMX/License+server+configuration+file).

The container must be restarted in order for the changes to take effect.

Mounting the volume should be done by using Docker Volumes:
 - create volume: `docker volume create config_volume`
 - start the container with the created volume:
     ```bash
     docker container run\
        --name licsrv\
        -p 6200:6200\
        --volume licenses:/licsrv/licenses\
        --volume config_volume:/licsrv/config\
        softingindustrial/floating-license-server
     ```

**NOTE**: Use only volumes for the configuration file, not bind mounts. The latter will overwrite the internal container volume, making the configuration file inaccessible.

To edit the configuration file after the volume has been mapped, it can be found in the following path: `/var/lib/docker/volumes/config_volume/_data/lmx-serv.cfg`, where `config_volume` is the name of the Docker volume created.
This path may change depending on host environment.


## Bind Mounts for Windows

**Bind mount license file diretory on Windows host**

The above described scenarios are described for docker environments on linux hosts. If you are running a windows host, the steps are slightly different.
Follow the description above to run the container (as linux container on windows host system).

Then use the following command to retrieve the HostID:

```bash  
docker container logs licsrv
```

![](LM_HostID.png)

Then log in at [mySofting](https://industrial.softing.com/my-softing.html?) and go to *register license*.

![](LM_license_registration.png) 

Enter the *HostID* and the *License Key* you received from Softing and download the *.lic*-File to your host.

Go to the host and create a new folder you want to use as license store. In this example, the folder *docker_volume* was created in the following path: *C:\Users\fch\docker_volume*

After the folder was created, it can be shared/bind mounted to the docker environment:

![](LM_BindMount.png)

Now the downloaded *.lic*-File can be copied to the created folder.

With the following command, the license server is started together with the created folder/volume and the included license file:

```bash  
docker container run -d -p 6200:6200 --name licsrv --volume c:\users\fch\docker_volume:/licsrv/licenses softingindustrial/floating-license-server
```

The last step is to activate the license server in the edgeConnector product:

![](LM_activate_licsrv.png) 

Use the IP-Address from the host system and the port 6200. Click on save, navigate to operation and toggle a restart of the application to apply the changes.
If the license was generated/detected correctly it will be shown on the license overview page:

![](LM_license.png) 

**Hint:** The licsrv needs a restart, everytime new licenses are copied to the bind mounted volume to apply the new licenses!
