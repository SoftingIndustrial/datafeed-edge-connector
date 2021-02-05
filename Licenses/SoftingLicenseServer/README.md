# **Softing License Server**

![](LM_available_licenses.png)

**Softing License Server** is a machine used to host network software licenses (also called floating licenses or shared licenses) that are installed locally on an individual users' machines. The network licenses can be shared among many users and/or applications.

**Softing License Server** fulfills requests to run a network application if the required license is available. When the network license is released (for example, a user closes the application), the license is moved to the license server's available license pool and is made available for other checkout requests.

Install **Softing License Manager** V4 on a PC with Internet connection from [https://data-intelligence.softing.com/products/edge-connector-docker/datafeed-edgeconnector-siemens/#tx-dftabs-tabContent2](https://data-intelligence.softing.com/products/edge-connector-docker/datafeed-edgeconnector-siemens/#tx-dftabs-tabContent2).

## Activate License with Internet Connection

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


## Activate License Without Internet Connection

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

## End-user Tools

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
