# FANUC CNC Connection Configuration

To configure a connection to a FANUC device, navigate to
**Connectivity** -> **PLC** -> **FANUC CNC** in the navigation tree
as depicted below:

![fanuc_navigation](.../documentation_pics/fanuc_navigation.png)

The page provides an overview of the currently configured connections including
its
**Name**, its **IP Address**, its connection **Status** and its **Enabled**
status.

| Column Name | Information Details                                                                                                                         |
| :--         | :--                                                                                                                                         |
| Name        | Connection name as defined at creation time                                                                                                 |
| IP Address  | IP address or host name of device                                                                                                              |
| Status      | Status of connection                                                                                                                    |
|             | The connection status can be `Connected` if the connection to the device is established or `Disconnected` if there is no connection to the device |
|             | The connection status is dynamically updated every 2 seconds.                                                                               |
| Enabled     | Configuration status of the connection                                                                                                  |
|             | Possible values are `Enabled` or `Disabled`.                                                                                                |
|             | **Note:**                                                                                                                                   |
|             | Clicking the current configuration status icon triggers a state toggle: *Enabled* -> *Disabled* respectively *Disabled* -> *Enabled*        |

From the title bar of the connection overview table a new connection can be added and existing connections can either be edited or deleted.  

- To add a new connection click the **Add Connection**
  ![Add Connection](.../documentation_pics/add_connection.png) button.  
- To edit an existing connection, first select it from the overview table
  and click the **Edit Connection**
  ![Edit Connection](.../documentation_pics/edit_connection.png) button.
- To delete an existing connection, first select it from the overview
  table and click the **Delete Connection**
  ![Delete Connection](.../documentation_pics/delete_connection.png) button.  

Adding a new connection and editing an existing connection, both open an
identical page. The only difference is, that for an existing connection the
**Connection Name** property cannot be changed.  

![fanuc_connection_settings_basic](.../documentation_pics/fanuc_connection_settings_basic.png)

The configuration parameters are described below:

| Parameter Name        | Default Value                 | Description                                                  |
| --------------------- | ----------------------------- | ------------------------------------------------------------ |
| Connection Name       | \<empty\>                     | Connection name as it will show up in the connection overview page|
| | |The connection name has to be unique and can only be assigned when adding a new connection.|
| | |**Note:** |
| | |The following characters are not supported in the **Connection Name** field:  *# ^ < > / $* |
| Enabled               | *Enabled*                     | Instructs **dataFEED edgeConnector FANUC CNC** to either *Enable* (checked) or *Disable* (unchecked) the currently configured connection. |
| Txt-File              |                               | ASCII text file defining the symbols for the individual [PMC variables](../Fanuc-PMC-Syntax.md) |
| Address           | \<empty\>                     | Address of the target device. This is either an IP address or a hostname. |
| Select Address Spaces | AllConnection | Destination aggregation address space used to store the address space corresponding to this connection |
| | AddressSpace | It is possible to create additional aggregation address spaces by filling in the desired address space name in the input field and clicking the **Add** button. All available address spaces are visible in a list and can be selected as destination address space for the OPC UA Client connection by checking the corresponding checkbox. |
| | | For more details about the OPC UA Server functionality and configuration please refer to the [OPC UA Configuration page](.../common/opcua.md). |