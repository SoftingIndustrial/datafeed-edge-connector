# Configuration

After the docker container has been successfully started the dataFEED edgeConnector application runtime can be configured via the web interface. To connect to the web interface of the application point a browser to the address of the system executing the docker application. For example:  

| With TLS | Without TLS |
| --- | --- |
| [https://localhost:1443](https://localhost:1443) | [http://localhost:8099](http://localhost:8099) |

## Login
A Login page is shown. If this is the first time running the application use the [default credentials](defaults.md)  
![login](../documentation_pics/login.png)

### Secure Admin account

**Recommendation:**
We strongly recommend to replace the default admin password with an individual, secure password.  
To change the admin password navigate to **General Settings -> Users & Identity Management** and select the **admin** user, as in the following screenshot:  
!["General Settings" -> "Users & Identies"](../documentation_pics/edit-admin1.png)
  - Then click the ![edit_user](../documentation_pics/edit_user.png) "Edit user" button.
  - On the following user settings page select "Change Password".
  - In the change password input fields enter the new password in each of the two fields.
  - Finally use the "Save" button.

## Status
On top of each page an application information summary is presented.  
![toprow_status](../documentation_pics/toprow_status.png)  
The status displays if the application is in running or in halted mode. It also includes information about the current license state. If the application is running in demo mode, the `DEMO` keyword is appended to the status.
The user that is currently logged in is presented in separate information box.
Use the Logout button to logout the current user, close the session and return to the [login page](#login)  

## Navigation
On the left hand side a navigation pane is provided to switch between the different configuration sections.  

![navpane](../documentation_pics/navpane.png)
