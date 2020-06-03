# dataFEED edgeConnectors

## Indroduction
dataFEED edgeConnectors is a family of applications that provide connectivity to PLCs of different vendors.
dataFEED edgeConnectors are packaged as docker images. Each application consists of a webserver for configuration, a protocol driver to connect to a PLC and an OPCUA server for data access.

## Connector types

For the different PLC types, the following specialized connector types are available:

  1. [edgeconnector-siemens](edgeconnector-siemens/README.md) for Siemens S7-1200/1500 PLCs
  2. [edgeconnector-840d](edgeconnector-840d/README.md) for Sinumerik 840D PL/SL

# Configuration

The common configuration of the connector images is described in [common/configuration.md](common/configuration.md).

# Licenses

The dataFEED edgeConnectors come with a time limited and functionality unlimited demo mode.
The demo is immediately started when the application starts up without a valid license.
The demo mode will expire after 72 hours and the application stops working.  
To remove the time limitation of the demo mode the application must be licensed.
The dataFEED edgeConnectors use a floating license mechanism.
A working floating license server is required to have the application successfully licensed.  

Please read [Licenses/README.md](Licenses/README.md) for further details.

## Softing License

The activation of the connector license from Softing is described in [Licenses/SoftingLicenseServer](Licenses/SoftingLicenseServer/README.md).

### License Server Connection Configuration

Please read [Licenses/README.md](Licenses/README.md#license-server-connection-configuration) for further details.


## Open Source Licenses

For the licenses of the open source components used in the connector images, please read [Licenses/OpenSourceLicenses.md](Licenses/OpenSourceLicenses.md).
