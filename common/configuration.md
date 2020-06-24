# Configuration

After the Docker container has been successfully started the **dataFEED edgeConnector** module runtime can be configured via the web interface. To connect to the web interface of the module point a browser to the address of the system executing the Docker module. For example:  

| With TLS | Without TLS |
| --- | --- |
| [https://localhost](https://localhost) | [http://localhost:8099](http://localhost:8099) |
| [https://localhost:1443](https://localhost:1443) | |

## Login
A login page is shown. If this is the first time running the **dataFEED edgeConnector** module use the [default credentials](defaults.md)  
![login](../documentation_pics/login.png)

### Secure Admin Account

**Recommendation:**
We strongly recommend to replace the default administrator password with an individual, secure password.  
To change the administrator password navigate to ***General Settings -> Users & Identity Management*** and select the ***admin*** user, as shown in the following screenshot:  
!["General Settings" -> "Users & Identies"](../documentation_pics/edit-admin1.png)
  - Click the ***Edit user*** ![edit_user](../documentation_pics/edit_user.png) button.
  - On the following user settings page select ***Change Password***.
  - In the change password input fields enter the new password in each of the two fields.
  - Finally click the ***Save*** button.

## Status
On top of each page a module information summary is presented.  
![toprow_status](../documentation_pics/toprow_status.png)  
The status displays if the module is in running or in halted mode. It also includes information about the current license state. If the module is running in demo mode, the keyword `DEMO` is appended to the status.
The user that is currently logged in is presented in a separate information box.
Use the ***Logout*** button to logout the current user, close the session and return to the [login page](#login)  

## Navigation
On the left hand side a navigation pane is provided to switch between the different configuration sections.  

![navpane](../documentation_pics/navpane.png)

## Connectivity

The Connectivity section contains the configuration of the OPC UA Server Modules and the PLC Connectivity subsections.

The functionality and configuration of the OPC UA Server component is described in the [OPC UA Configuration](../common/opcua.md) document.

The PLC connectivity is described in detail in the appropriate section of the **dataFEED edgeConnector** documents:

- **dataFEED edgeConnector Siemens** [Configuration](../edgeconnector-siemens/README.md#configuration)
- **dataFEED edgeConnector 840D** [Configuration](../edgeconnector-840d/README.md#configuration)
