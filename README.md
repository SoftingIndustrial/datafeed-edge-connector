# dataFEED edgeConnectors

## Indroduction
dataFEED edgeConnectors is a family of applications that provide connectivity to PLCs of different vendors.
dataFEED edgeConnectors are packaged as a docker image. Each application consists of a webserver for configuration, a protocol driver to connect a PLC and an OPCUA server for data access.

## Connector types

For the different PLC types, the following specialized connector types are available:

  1. [edgeconnector-siemens](edgeconnector-siemens/README.md) for Siemens S7-1200/1500 PLCs
  2. [edgeconnector-840d](edgeconnector-840d/README.md) **(comming soon)** for Sinumerik 840D PL/SL

# Configuration

The common configuration of the connector images is described in [common/configuration.md](common/configuration.md).

# Licenses

For the licenses of the open source components used in the connector images, please read [Licenses/README.md](Licenses/README.md).
