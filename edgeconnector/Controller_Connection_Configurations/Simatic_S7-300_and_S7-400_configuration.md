# SIMATIC S7-300 / S7-400 Connection Configuration

**dataFEED edgeConnnector Siemens** provides an interface to connect and fetch data
from SIMATIC S7 300 or 400 series PLCs.

To configure a connection to a SIMATICs S7 300 or S7 300 PLC, navigate to
**Connectivity** -> **PLC** -> **Siemens S7 300/400** in the navigation tree as
depicted below:

![s7_navigation](.../documentation_pics/s7_300_navigation.png)

The page provides an overview of the currently configured connections including
its **Name**, its **IP Address**, its connection **Status** and its **Enabled**
status.

![s7_overview](.../documentation_pics/s7_300_overview.png)

From the title bar of the connection overview table a new connection can be added
and existing connections can either be edited or deleted.  

- To add a new connection click the **Add Connection**
  ![Add Connection](.../documentation_pics/add_connection.png) button.  
- To edit an existing connection, first select it from the overview table and
  click the **Edit Connection** ![Edit Connection](.../documentation_pics/edit_connection.png) button.
- To delete an existing connection, first select it from the overview table and
  click the **Delete Connection** ![Delete Connection](.../documentation_pics/delete_connection.png) button.  

Adding a new connection and editing an existing connection, both open an
identical page. The only difference is, that for an existing connection the
**Connection Name** property cannot be changed.  

![add-s7-315-connection.png](.../documentation_pics/add-s7-315-connection.png)

The configuration parameters are described below:

| Parameter Name        | Default Value                 | Description                                                  |
| --------------------- | ----------------------------- | ------------------------------------------------------------ |
| Connection Name       | \<empty\>                     | Connection name as it will show up in the connection overview page|
| | |The connection name has to be unique and can only be assigned when adding a new connection.|
| | | **Note:**|
| | |The following characters are not supported in the **Connection Name** field:  *# ^ < > / $* |
| Enabled               | *Enabled*                     | Instructs **dataFEED edgeConnector** to either *Enable* (checked) or *Disable* (unchecked) the currently configured PLC connection. |
| SDFI-File             | \<empty\>                     | The SDFI file with the address-space definition to upload, see [sdfi](.../common/sdfi.md) |
| PLC Address           | \<empty\>                     | Address of the target device |
| | | This is either an IP address or a hostname. |
| Select Address Spaces | AllConnection |
| | | AddressSpace | Destination aggregation address space used to store the address space corresponding to this PLC connection|
| | | It is possible to create additional aggregation address spaces by filling in the desired address space name in the input field and clicking the **Add** button. All available address spaces are visible in a list and can be selected as destination address space for the OPC UA Client connection by checking the corresponding checkbox.|
| | | For more details about the OPC UA Server functionality and configuration please refer to the [OPC UA Configuration page](.../common/opcua.md). |