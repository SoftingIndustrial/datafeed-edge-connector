# Siemens SINUMERIK 840D Connection Configuration

**dataFEED edgeConnector 840D** provides an interface to connect and fetch data from
Siemens SINUMERIK 840D series controllers.

To configure a Siemens SINUMERIK 840D connection, navigate to
**Connectivity** -> **PLC** -> **Siemens SINUMERIK 840D** in the navigation tree as
depicted below:

![sinumerik 840d_navigation](../../documentation_pics/s840d_navigation.png)

The page provides an overview of the currently configured connections including its
**Name**, its **IP address**, its connection **Status NCK**, its **Status PLC**
and its **Enabled** status.  

![sinumerik 840d_overview](../../documentation_pics/s840d_overview.png)  

| Column Name | Information Details |
| :-- | :-- |
| Name | Connection name as defined at creation time |
| IP Address | IP address or host name of PLC |
| Status NCK | Status of NCK connection |
| | | The connection status can be `Connected` if the connection to the NCK is established; `Disconnected` if there is no connection to the NCK or it can be `Disabled` if the connection to the NCK has not been configured for this entry.|
| | | The connection status is dynamically updated every 2 seconds. |
| Status PLC | Status of PLC connection |
| | The connection status can be `Connected` if the connection to the PLC is established; `Disconnected` if there is no connection to the PLC or it can be `Disabled` if the connection to the PLC has not been configured for this entry.|
| | The connection status is dynamically updated every 2 seconds. |
| Enabled | Configuration status of PLC connection |
| | Possible values are `Enabled` or `Disabled`.|
| | **Note:**|
| | Clicking the current configuration status icon triggers a state toggle: *Enabled* -> *Disabled* respectively *Disabled* -> *Enabled*.|
| | When in *Disabled* state both the NCK and PLC connections are disabled, when *Enabled* only the connection types initially configured for this connection are enabled. |

From the title bar of the connection overview table a new connection can be
added and existing connections can either be edited or deleted.  

- To add a new connection click the **Add Connection**
![Add Connection](../../documentation_pics/add_connection.png) button.  
- To edit an existing connection, first select it from the overview table and
click the **Edit Connection** ![Edit Connection](../../documentation_pics/edit_connection.png) button.  
- To delete an existing connection, first select it from the overview table
and click the **Delete Connection** ![Delete Connection](../../documentation_pics/delete_connection.png) button.  

Adding a new connection and editing an existing connection, both open an
identical page. The only difference is, that for an existing connection the
**Connection Name** property can not be changed.

![SINUMERIK 840D connection settings](../../documentation_pics/s840d_connection_settings_basic.png)

The configuration parameters are described below:

| Parameter Name        | Default Value                 | Description                                                  |
| --------------------- | ----------------------------- | ------------------------------------------------------------ |
| Connection Name       | \<empty\>                     | Connection name as it will show up in the connection overview page |
| | | The connection name has to be unique and can only be assigned when adding a new connection.|
| | | **Note:**|
| | | The following characters are not supported in the **Connection Name** field:  *# ^ < > / $* |
| NCK Connection        |                               | Controls whether the NCK Connection for this SINUMERIK 840D connection is enabled or not. |
| | | Ticking the checkbox enables the connection and allows the user to upload a custom *AWL* symbol file. Uploading a symbol file is optional. In case no *AWL* file is uploaded, a generic symbol file is used by **dataFEED edgeConnector 840D**. The default *AWL* symbol file is intended for SINUMERIK 840D SL series devices. For SINUMERIK 840D PL series devices a custom *AWL* symbol file like [Standard_pl.awl](../Standard_pl.awl) needs to be uploaded.  |
| PLC Connection        |                               | Controls whether the PLC Connection for this SINUMERIK 840D connection is enabled or not. |
| | | Ticking the checkbox enables the connection and allows the user to upload a custom *SDFI* symbol file. Uploading a symbol file is optional. In case no *SDFI* file is uploaded, a generic symbol file is used by **dataFEED edgeConnector 840D**. |
| PLC Address           | \<empty\>                     | Address of the target device (SINUMERIK 840D). This is either an IP address or a hostname. |
| Select Address Spaces | AllConnection |
| | AddressSpace | Destination aggregation address space used to store the address space corresponding to this PLC connection|
| | | It is possible to create additional aggregation address spaces by filling in the desired address space name in the input field and clicking the **Add** button. All available address spaces are visible in a list and can be selected as destination address space for the OPC UA Client connection by checking the corresponding checkbox.|
| | | For more details about the OPC UA Server functionality and configuration please refer to the [OPC UA Configuration page](../../common/opcua.md). |