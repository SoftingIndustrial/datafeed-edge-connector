# Licenses

The **dataFEED edgeConnector** application uses a floating license mechanism
communicating with a stand alone licensing server application used to serve
licenses to one or more application instances.  
Licenses checked out (borrowed) from the licensing server are transformed by
the application into licensing slot counts. The default behavior uses one slot
count for accessing a node in the information model, referred from hereon
as a datapoint. 

A working floating license server is required to have the 
**dataFEED edgeConnector**  module successfully licensed.  
Every read, write and subscribe service operations on a single node uses up
a datapoint license. When all service operations are finished the application 
frees up the datapoint license in up to 25 seconds. The application checks 
out packages of 100 datapoint licenses from the license server. The application 
uses a dynamic licensing approach, therefore when it uses up a package it tries 
to check out another package of 100 datapoints from the license server.  
Preallocation of datapoint licenses from the licensing server is possible at 
startup. The availability of the preallocated licenses is guaranteed while the 
application state is in running mode, this means that the preallocated licenses
will not be checked in to the licensing server. The dynamic behavior will still
work.  

The **dataFEED edgeConnector** modules' scope of delivery includes a
time-limited and functionally limited demo mode. The demo mode comes 
with 100 datapoints which can be used for up to 72 hours. After 72 hours the 
**dataFEED edgeConnector** runtime will be stopped.  

To remove the time and datapoints limitation of the demo mode for the 
**dataFEED edgeConnector**, a valid license needs to be acquired, activated 
and installed in a licensing server.

## Softing License

The license activation for Softing's **dataFEED edgeConnector** product
family is described at the [README page](./SoftingLicenseServer/README.md)
of the Softing License Server.

### License Server Connection Configuration

To specify the floating license server, navigate to
***General Settings*** -> ***Licenses*** -> ***License Server Configuration***
in the navigation tree as depicted below:
![license_serverconfig](../documentation_pics/license_serverconfig.png)
The License Server Configuration page allow the configuration of a Floating
License Server and the number of datapoint licenses to be reserved
by application.
If the ***Enable Server*** checkbox is activated, the address and port of a
floating license server can be specified. The address can either be a hostname
or an IP address. The used default port is **6200**. Use the ***Save*** button to save the configuration.

A restart of the application is required to activate a license for the module.
![Restart module](../documentation_pics/restart-application.png)

### Overview

Navigate to ***General Settings*** -> ***Licenses*** -> ***Overview*** in the
navigation tree to show the current license status.
![license_overview](../documentation_pics/license_overview.png)

#### License Server Information

The ***License Server Information*** table provides an overview of the
individual Softing licenses provided by the connected floating license servers.

| Product | Server | Version | Expires | Order ID | Options | Total | Used |
| :------ | :----- | :------ | :------ | :------- | :---- | :--- | :--- |
| Product name of the license | Floating license server address | Licensed product version | Date when the license will become invalid | Order-ID of the product | Description of the license type with the number of datapoint licenses | Total number of licenses of this type | Number of license of this type currently in use |

#### Application License Details

In addition to the general license status presented in the [status bar](#status)
the ***Application License Details*** table provides a detailed overview of the
licensed feature and the amount of total and available resources for each
licensed feature.

| Type | Total | Available | Server Slots | Server Slots Used |
| --- | --- | --- | -- | -- |
| Licensed feature; If this is a demo license, the *DEMO* keyword is appended | Total number of licensed features (features which were checked out from the licensing server) | Number of available licensed features (features which can be created without checking out a new one from the licensing server) | Sum of licenses for the feature at the license server | Sum of used licenses for the feature at the license server |

## Open Source Licenses

For the license information of the open source components used by the
**dataFEED edgeConnector** product family, please see the
[Open Source page](OpenSourceLicenses.md).

