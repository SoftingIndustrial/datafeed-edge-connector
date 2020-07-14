# Licenses

The **dataFEED edgeConnector** modules' scope of delivery includes a time-limited
and functionaly unlimited demo mode.
The demo mode is started immediately once the module has been started without a
valid license.
It will expire after 72 hours and the **dataFEED edgeConnector** module stops
working.  
To remove the time limitation of the demo mode the **dataFEED edgeConnector**
module must be licensed.
The **dataFEED edgeConnector** modules use a floating license mechanism.
A working floating license server is required to have the
**dataFEED edgeConnector** module successfully licensed.  

## Softing License

The license activation for Softing's **dataFEED edgeConnector** product family is
described at the [README page](Licenses/SoftingLicenseServer/README.md) of the
Softing License Server.

### License Server Connection Configuration

To specify the floating license server, navigate to
***General Settings*** -> ***Licenses*** -> ***License Server Configuration***
in the navigation tree as depicted below:  
![license_serverconfig](../documentation_pics/license_serverconfig.png)  
If the ***Enable Server*** checkbox is activated, the address and port of a
floating
license server can be specified. The address can either be a hostname or IP
address. Use the ***Save*** button to save the configuration.  
A restart of the module is required to activate a license for the module.  
![Restart module](../documentation_pics/restart-application.png)

The module will only consume a license from the floating license server, if it
requires a license, for example if a connection is configured and enabled.  

### Overview

Navigate to ***General Settings*** -> ***Licenses*** -> ***Overview*** in the
navigation tree to show the current license status.<br>
![license_overview](../documentation_pics/license_overview.png)

#### License Server Information

The ***License Server Information*** table provides an overview of the individual
Softing licenses provided by the connected floating license servers.

| Product | Server | Version | Expires | Order ID | Total | Used |
| :------ | :----- | :------ | :------ | :------- | :---- | :--- |
| Product name of the license | Floating license server address | Licensed product version | Date when the license will become invalid | Order-ID of the product | Number of connections which can be used with this license | Number of connections currently using this license |

#### Application License Details

In addition to the general license status presented in the [status bar](#status) the
***Application License Details*** table provides a detailed overview of the licensed
feature and the amount of total and available resources for each licensed feature.  

| Type | Total | Available | Server Slots | Server Slots Used |
| --- | --- | --- | -- | -- |
| Licensed feature<br>If this is a demo license, the *DEMO* keyword is appended | Total number of licensed features (features which were checked out from the licensing server) | Number of available licensed features (features which can be created without checking out a new one from the licensing server) | Sum of licenses for the feature at the license server | Sum of used licenses for the feature at the license server |

## Open Source Licenses

For the license information of the open source components used by the
**dataFEED edgeConnector** product family, please see the [Open Source page](Licenses/OpenSourceLicenses.md).

