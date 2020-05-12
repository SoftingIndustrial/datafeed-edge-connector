# OPC UA endpoint configuration #

The OPC UA server module allows the dataFEED edgeConnectors to create OPC UA server endpoints used by external OPC UA clients to access the PLC data.

## Enabling/Disabling the OPC UA Server Module ##

To enable or disable the OPC UA server module navigate to **Connectivity -> OPC UA -> OPC UA Server Application Settings** and change the state of the module by checking/unchecking the **[Activate/Deactivate OPC UA Server]** checkbox.

![OPC UA server enable](../documentation_pics/opc_ua_enable_server.png)

## OPC UA Server Endpoints ##

Information about all configured server endpoints is centralized and accessible by navigating to **Connectivity -> OPC UA -> OPC UA Server Application Settings -> OPC UA Server Endpoints**.

![OPC UA Server Endpoints page](../documentation_pics/opc_ua_server_endpoints_page.png)

The page consists of two areas:

- OPC UA Server Endpoints
- Endpoint Users - Identities

### OPC UA Server Endpoints ###

In the **OPC UA Server Endpoints** table, all configured OPC UA server endpoints are displayed, each row representing a connection. The information in the table is sortable by clicking the table header.

![OPC UA Server Endpoints table](../documentation_pics/opc_ua_server_endpoints_table.png)

| Column name          | Information details                                          |
| -------------------- | ------------------------------------------------------------ |
| Endpoint Name        | User defined endpoint name.                                  |
| Endpoint URL         | The endpoint URL based on:<br> - the user defined transport protocol (opc.tcp or http)<br> - the fully qualified domain name of the computer running the dataFEED edgeConnector<br>- user defined port<br>- user defined url-path |
| Endpoint Description | User defined endpoint description text. It can be used to include additional information or remarks about the endpoint. |
| URLs                 | Provides a list with all possible URLs which can be used to access the configured endpoint. |
| Enabled              | Describes the configuration state of the OPC UA server endpoint. See the table below for more details. |

| Endpoint state                                               | Icon                                               | Details                                                      |
| ------------------------------------------------------------ | -------------------------------------------------- | ------------------------------------------------------------ |
| Disable                                                      | ![Enabled](../documentation_pics/SwitchOn.png)     | The endpoint is **configured as disabled** therefore it is inaccessible by any OPC UA client.<br>Clicking on the current configuration state icon would trigger a state toggle: Disabled -> Enabled |
| Enabled                                                      | ![Disabled](../documentation_pics/SwitchOff.png)   | The endpoint is **configured as enabled,** it is accessible and shall be able to accept incoming connection requests if other environmental conditions are met (e.g.: license slots are available).<br>Clicking on the current configuration state icon would trigger a state toggle: Enabled -> Disabled |
| Access Protection temporarily or permanently disabled        | ![](../documentation_pics/SwitchOn_WarnRed.png)    | The endpoint is **configured as enabled**, but it was **disabled by the access protection** feature because the configured access protection restrictions where met.<br>Checking the access protection applied settings it can be found if the endpoint is temporarily or permanently disabled.<br>Clicking on the current configuration state icon would trigger a state toggle resetting the current access protection state and re-enabling the endpoint:<br>Access Protection temporarily or permanently disabled-> Enabled |
| Access Protection IPs or certificated prevented authentication | ![](../documentation_pics/SwitchOn_WarnYellow.png) | The endpoint is **configured as enabled**, it is accessible and shall be able to accept incoming connection requests, but it rejects some connections attempts based on IPs or certificates  as resulted from the access protection configuration.<br>This state can be manually reset by accessing the access protection settings and disabling/enabling the authentication restrictions for remote IPs and certificates.<br>Clicking on the current configuration state icon would trigger a state toggle, but it **shall not reset** the access protection state:<br>Access protection IPs or certificates prevented authentication -> Disabled |

From the title bar of the OPC UA Server Endpoints table a new endpoint can be added or an exiting endpoint can be edited or deleted:

- To add a new connection click the ![add_endpoint](../documentation_pics/add_connection.png) button.  
- To edit an existing endpoint, first select it from the overview table and click the ![edit_connection](../documentation_pics/edit_connection.png) button. 
- To delete an existing endpoint, first select it from the overview table and click the ![delete_connection](../documentation_pics/delete_connection.png) button.  