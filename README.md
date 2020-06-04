# dataFEED edgeConnector Family

## Indroduction

The dataFEED edgeConnector familys is a set of of modules allowing to connect to controllers of different vendors.
The various dataFEED edgeConnector modules are packaged as Docker images.
Each module consists of a webserver for configuration, a protocol driver to connect to a PLC and an OPCUA Server for data access.

## Connector types

For the different controller types, the following specialized connector types are available:

  1. [dataFEED edgeConnector Siemens](edgeconnector-siemens/README.md) for Siemens S7-1200/1500 PLCs
  2. [dataFEED edgeConnector-840D](edgeconnector-840d/README.md) for SINUMERIK 840D PL/SL controllers

# Configuration

The common configuration of the dataFEED edgeConnector images is described in [common/configuration.md](common/configuration.md).

# Licenses

The dataFEED edgeConnector modules come with a time limited and functional unlimited demo mode.
The demo is immediately started when the module starts up without a valid license.
The demo mode will expire after 72 hours and the module stops working.  
To remove the time limitation of the demo mode the module must be licensed.
The dataFEED edgeConnectors use a floating license mechanism.
A working floating license server is required to have the module successfully licensed.  

Please read [Licenses/README.md](Licenses/README.md) for further details.

## Softing License

The activation of the ataFEED edgeConnector license from Softing is described in [Licenses/SoftingLicenseServer](Licenses/SoftingLicenseServer/README.md).

### License Server Connection Configuration

Please read [Licenses/README.md](Licenses/README.md#license-server-connection-configuration) for further details.


## Open Source Licenses

For the licenses of the open source components used in the dataFEED edgeConnector images, please read [Licenses/OpenSourceLicenses.md](Licenses/OpenSourceLicenses.md).
