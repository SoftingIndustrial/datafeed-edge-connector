#### Siemens S7 1200/1500 connection configuration
Configuration related to Siemens S7 1200 and S7 1500 controllers is done in the `Connectivity -> PLC -> Siemens S7 1200/1500` section. The page provides an overview of the currently configured connections including the `Name`, the `IP address`, the connection `Status` and the `Enabled` state.  
![s71200-1500_overview](documentation_pics/s71200-1500_overview.png)  


| Column name | Information details |
| :-- | :-- |
| Name | Connection name as defined at creation time. |
| IP Address | IP Address or host name of the PLC |
| Status | Describes the state of the PLC connection; can be either Connected when the connection to the PLC is established or Disconnected when there is no connection to the PLC. The connection status is dynamically updated each 2 seconds. |
| Enabled | Describes the configuration state of the PLC connection. Possible values are Enabled or Disabled. Note: Clicking on the current configuration state icon would trigger a state toggle: Enabled -> Disabled ; Disabled -> Enabled |  


From the title bar of the connection overview table a new connection can be added and existing connections can be either edited or deleted.  
To add a new connection cklick the ![add_connection](documentation_pics/add_connection.png) button.  
To edit an existing connection, first select it from the overview table and click the ![edit_connection](documentation_pics/edit_connection.png) button.  
To delete an existing connection, first select it from the overview table and click the ![delete_connection](documentation_pics/delete_connection.png) button.  

Adding a new connection and editing an existing connection, each open the same page. The only difference is, that for an existing connection the `Connection Name` property can not be changed.  
![s71200-1500_connection_settings_basic](documentation_pics/s71200-1500_connection_settings_basic.png)  
The `Connection Name` must be unique and can only be assigned when adding a new connection.  
The state of `Enabled` checkbox determines if the connection shall be used.  
The `PLC Address` holds the address of the target device (S7 1200/1500 PLC). This is either an IP address or a hostname.  

