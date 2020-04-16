# Configuration

After the docker container has been successfully started the dataFEED edgeConnector application runtime can be configured via the web interface. To connect to the web interface of the application point a browser to the address of the system executing the docker application. For exmaple:  

| With TLS | Without TLS |
| --- | --- |
| [https://localhost:1443](https://localhost:1443) | [http://localhost:8099](http://localhost:8099) |

### Login
A Login page is shown. If this is the first time running the application use the [default credentials](defaults.md)  
![login](../documentation_pics/login.png)

### Status
On top of each page an application information summary is presented.  
![toprow_status](../documentation_pics/toprow_status.png)  
The status displays if the application is in running or in halted mode. It also includes infromation about the current license state. If the application is running in demo mode, the `DEMO` keyword is appended to the status.
The user that is currently logged in is presented in separate information box.
The Logout button. Use this to logout the current user, close the session and return to the [login page](#login)  

### Navigation
On the left hand side a navigation pane is provided to switch between the different configuration sections.  
![navpane](../documentation_pics/navpane.png)

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
