# dataFEED edgeConnector Product Family

## Indroduction

The dataFEED edgeConnector product family is a set of of modules allowing to connect to controllers of different vendors.
The various dataFEED edgeConnector modules are packaged as Docker images.
Each module consists of a webserver for configuration, a protocol driver to connect to a PLC and an OPC UA Server for data access.

## Connector types

For the different controller types, the following specialized connector types are available:

  1. [dataFEED edgeConnector Siemens](edgeconnector-siemens/README.md) for Siemens S7-1200/1500 PLCs
  2. [dataFEED edgeConnector 840D](edgeconnector-840d/README.md) for SINUMERIK 840D PL/SL controllers

# Configuration

The common configuration of the dataFEED edgeConnector product family is described in the [Configuration](common/configuration.md) section.

# Licenses

The dataFEED edgeConnector modules come with a time-limited and functionaly unlimited demo mode.
The demo mode is started immediately once the module has been started without a valid license.
It will expire after 72 hours and the dataFEED edgeConnector module stops working.  
To remove the time limitation of the demo mode the module must be licensed.
The dataFEED edgeConnector modules use a floating license mechanism.
A working floating license server is required to have the module successfully licensed.  

Please see the [License README file](Licenses/README.md) for further details.

## Softing License

The license activation for Softing's dataFEED edgeConnector product family is described in the [README file of the Softing License Server](Licenses/SoftingLicenseServer/README.md).

### License Server Connection Configuration

Please see the section [License Server Connection Configuration](Licenses/README.md#license-server-connection-configuration) of the License README file for further details.


## Open Source Licenses

For the license information of the open source components used by the dataFEED edgeConnector product family, please see the [Open Source documentation](Licenses/OpenSourceLicenses.md).
