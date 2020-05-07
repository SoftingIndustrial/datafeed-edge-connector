# Licenses

The dataFEED edgeConnectors come with a time limited and functionality unlimited demo mode. The demo is immediately started when the application starts up without a valid license. The demo mode will expire after 72 hours and the application stops working.  
To remove the time limitation of the demo mode the application can be licensed. The dataFEED edgeConnectors use a floating license mechanism. A working floating license server is required to have the application successfully licensed.  

## Softing License

The activation of the connector license from Softing is described in [SoftingLicenseServer](SoftingLicenseServer/README.md).

### License Server Connection Configuration

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

## Open Source Licenses

For the licenses of the open source components used in the connector images, please read [OpenSourceLicenses.md](OpenSourceLicenses.md).
