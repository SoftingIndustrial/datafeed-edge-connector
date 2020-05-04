# Softing License Server

![](LM_available_licenses.png)

The Softing License Server is a machine used to host network software licenses (also called floating or shared licenses) that are installed locally on an individual users' machine. The network licenses can be shared among many users/applications.

Softing License Server fulfills requests to run the network application if the requested licenses are available. When the network license is released (for example, a user closes the application), the license is moved in the license server's available license pool and is made available for other checkout requests.

## Activate license with internet connection

Activation the license requires a computer with internet access. If the connection to the internet requires a proxy server, please make sure the connection settings are properly configured using the Proxy Settings... button in the Settings page of the Configuration section.

  * First of all, please enable Provide all PC-Id’s under Settings ![](LM_provide_all_pc_id.png)
  * Please verify that the Softing License Manager V4 can correctly communicate with the Softing license server by performing a connection test - Test server connection... button. ![](LM_provide_all_pc_id.png)  
    If the connection test is not successful, please double-check the proxy settings. The connection test status must return 200 in order to properly activate a license.
  * If the connection test is successful, please proceed with the license activation by selecting the desired PC-Id, which should be used for the activation process then type in the License Key and press the Activate license button. ![](LM_activate_license.png)
  * After the successful activation the license will be shown in the list of the available licenses. Please note that the license type (Local / Network) will be automatically provided by the Softing License Server, based on the license key. "Local" licenses can be activated either against machine HostIDs - thus having the exact "Local" term be displayed next to the license - or against an attached USB HASP Dongle - having the term "Dongle" displayed next to the license. ![](LM_license_is_activated.png)
  * If your floating license server is not running on localhost or the path to the Softing License Server from Softing License Manager V4 configuration file (C:\Program Files (x86)\Softing\LicenseManager\SLMenduserApp.xml) is not correct then the Softing License Server should be restarted manually. Please note that license activations for remote floating license servers is not possible with the provided HostIDs, you would rather have to use the exported HostIDs as in the Activate license without internet connection chapter. ![](LM_restart_license_server.png)
  * The ![LM-X License Server](https://docs.x-formation.com/display/LMX/LM-X+License+Server) is listening on both TCP and UDP ports 6200. Please create a Windows Defender Firewall - Inbound Rule for port 6200 for both TCP and UDP protocol types in order to allow other PCs to connect to this floating license server. ![](LM_inbound_rule.png)
