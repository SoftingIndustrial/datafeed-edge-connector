# Licenses
The **dataFEED edgeConnector** application uses a floating license mechanism communicating with a standalone licensing server application used to serve licenses to one or more application instances.  The licenses used by the License Server are called **edgeConnection**.

Each license that has been checked out (borrowed) from the licensing server, is used by the edgeConnector or edgeAggregator applications as connection counts and allows the application to connect to one PLC or CNC controller, regardless of the number of variables that the controller has. 

The **dataFEED edgeConnector** modules' scope of delivery includes a time-limited demo mode. The demo mode comes with 20 connections which can be used for up to 72 hours. After 72 hours the **dataFEED edgeConnector** runtime will be stopped.

To remove the time limitation of the demo mode for the **dataFEED edgeConnector**, a valid license needs to be acquired, activated, and installed in a licensing server.


## Softing License

The license activation for Softing's **dataFEED edgeConnector** product
family is described at the [README page](./SoftingLicenseServer/README.md)
of the Softing License Server.

### License Server Connection Configuration

To specify the floating license server, navigate to ***General Settings -> Licenses -> License Server Configuration*** in the navigation tree as depicted below:

![license_serverconfig](../documentation_pics/ConfigImage1.png)
The License Server Configuration page allows the configuration of a Floating License Server. If the **Enable Server** checkbox is activated, the address and port of a floating license server can be specified. The address can either be a hostname or an IP address. The used default port is **6200**. Use the **Save** button to save the configuration.

A restart of the application is required to activate a license for the module.

![Restart module](../documentation_pics/ConfigImage2.png)

### Overview

Navigate to ***General Settings -> Licenses -> Overview*** in the navigation tree to show the current license status.
![license_overview](../documentation_pics/Overview_Image.png)

#### License Server Information

The ***License Server Information*** table provides an overview of the
individual Softing licenses provided by the connected floating license servers.

| Product | Server | Version | Expires | Order ID | Options | Total | Used |
| :------ | :----- | :------ | :------ | :------- | :---- | :--- | :--- |
| Product name of the license | Floating license server address | Licensed product version | Date when the license will become invalid | Order-ID of the product | Description of the license type | Total number of licenses of this type | Number of license of this type currently in use |

#### Application License Details

In addition to the general license status presented in the [status bar](#status)
the ***Application License Details*** table provides a detailed overview of the
licensed feature and the amount of total and available connections for each
licensed feature.

| Type | Total | Available |
| --- | --- | --- | 
| Type of License | Total number of licensed Connections| Number of available licensed connections| 

## Open Source Licenses

For the license information of the open source components used by the
**dataFEED edgeConnector** product family, please see the
[Open Source page](./OpenSourceLicenses.md).

