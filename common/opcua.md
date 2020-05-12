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
- To add a new endpoint click the ![add_endpoint](../documentation_pics/add_connection.png) button.  
- To edit an existing endpoint, first select it from the overview table and click the ![edit_connection](../documentation_pics/edit_connection.png) button. 
- To delete an existing endpoint, first select it from the overview table and click the ![delete_connection](../documentation_pics/delete_connection.png) button.  

### Endpoint Users - Identities ###

In this table details about the users assigned to the currently selected endpoint are provided.

![OPC UA Endpoint users](../documentation_pics/opc_ua_server_endpoints_users_table.png)

| Column Name   | Information details                                          |
| ------------- | ------------------------------------------------------------ |
| Username      | Name of the user.                                            |
| Address Space | Address space exposed to the OPC UA client connection to the selected endpoint  and authenticated with the current. |
| Certificate   | Highlights the validity status of the certificates attached to the user or the absence of any certificate<br><br>Possible values are:<br> - Certificates were found and all are fine: ![OkGreen](../documentation_pics/OkGreen.png) <br> - At least one certificate will expire soon: ![WarningExpireYellow](../documentation_pics/WarningExpireYellow.png)<br> - At least one certificate is already expired: ![WarningRed](../documentation_pics/WarningExpireRed.png)<br> - No certificates are attached to the current user: ![DeleteRed](../documentation_pics/DeleteRed.png) |
| Enabled       | Describes the configuration state of the assignment of the current user to the selected OPC UA server endpoint. Possible values are Enabled or Disabled.<br>Clicking on the current configuration state icon would trigger a state toggle: Enabled -> Disabled; Disabled -> Enabled |

## Server Endpoint Creation ##

Adding a new endpoint or editing an existing endpoint from the on the **OPC UA Server Endpoints** page the endpoint creation page is loaded which provides a simple and intuitive interface for configuring a new or editing an existing OPC UA server endpoint.

![OPC UA Server Endpoint creation](../documentation_pics/opc_ua_endpoint_creation.png)

The configuration parameters are described in the table below:

| Parameter name                       | Default Value                      | Description                                                  |
| ------------------------------------ | ---------------------------------- | ------------------------------------------------------------ |
| Endpoint Name                        | empty                              | Defines the connection name as it will show up in the OPC UA client connection overview page.<br>This name shall also be used by the OPC Client when connecting to an external OPC UA server<br>Note: The following characters are not supported in this field:  **# ^ < > / $** |
| Enabled                              | Enabled                            | Instructs the dataFEED edgeConnector to either enable (checked) or disable (unchecked) the currently configured OPC UA server endpoint. |
| OPC UA Endpoint Protocol             | TCP                                | The server endpoint transport protocol is configurable by selecting the appropriate radio button. |
| OPC UA Endpoint Hostname             | Hostname                           | Pre-populated, read-only field, defining the computer's hostname. |
| OPC UA Endpoint Port                 | 4810+                              | Defines the server port number. Populated with an available port, not assigned to an existing endpoint, starting with **port 4180.**<br>Note: Ports under 1024 are not allowed. Field is automatically validated. |
| OPC UA Endpoint Path                 | endpoint1                          | User editable server endpoint URL path. Pre-populated with a string in the form **endpoint[index]** where index might change if the path already exists. |
| Endpoint URL                         | opc.tcp://[hostname]:[port]/[path] | Configured server endpoint URL based on the selected **transport protocol**, **port number**, **URL path** and the existing **hostname.** |
| Authentication Settings              | All                                | Defines the authentication method supported by the endpoint.<br>Supported settings: **Anonymous, Username & Password** and **Certificate** |
| Message Security Mode                | All                                | Defines the endpoint message security mode (whether signing or encryption is used when exchanging messages).<br>Note: Supported message security mode: None, Sign, SignAndEncrypt |
| Security Policy                      | All                                | Defines the endpoint security policy (the encryption algorithm applied to the messages).<br>Note: Supported security policies: None, Basic256, Basic256Sha256, Basic128Rsa15, Aes128_Sha256_RsaOaep and Aes256_Sha256_RsaPss |
| Max Number of Concurrent Connections | 10                                 | Specifies the endpoint's maximum supported number of concurrent connection from external OPC UA clients. |
| Access Rights                        | All                                | Configures the endpoint's supported services.<br>Enable the service by checking the appropriate service checkbox.<br>Note: Supported service: Browse, Read, Write,  Subscribe, Method |
| Endpoint Description                 | empty                              | User defined endpoint description text. Can be used to include additional information or remarks about the endpoint |

#### Application Certificates ####

The certificates page provides an interface for managing the SSL certificates stored in the endpoint's PKI store.

![OPC UA Server Endpoint Application certificates](../documentation_pics/opc_ua_endpoint_creation_application_certificates.png)

##### Own Application Certificate #####

Lists the certificate used to identify the dataFEED edgeConnector endpoint application instance. This certificate is uniquely created for each OPC UA server endpoint.

Only one certificate should be visible in the own certificate area. This is the certificate which is used by the running OPC UA server endpoint to identify itself.

![OPC UA Server Endpoint won certificate](../documentation_pics/opc_ua_endpoint_own_certificate.png)

Several operations are accessible using the buttons placed top right:

- Reuse application certificate ![OPC UA reuse certificate](../documentation_pics/opc_ua_reuse_certificate.png) button: Provides the possibility to reuse a certificate which is already in use to identify a different configured OPC UA server endpoint. Clicking the button brings up a window which lists the available server endpoints. To reuse the certificate of an existing endpoint, select the endpoint in the list and click the **Reuse Certificate** button.

- Generate application certificate ![OPC UA generate certificate](../documentation_pics/opc_ua_generate_certificate.png) button: Will create a new replacement certificate for the current own application certificate.

- Upload application certificate ![OPC UA upload certificate](../documentation_pics/opc_ua_upload_certificate.png)button: Provides a simple way to replace the currently used application certificate with an already existing certificate. The upload certificate windows opens by clicking the **Upload certificate** button. In this view the new certificate file shall be selected by pressing the **Choose File** button.

  If the certificate requires a password, the corresponding password input field is to be used, otherwise the field should be left empty.

- Download application certificate ![OPC UA download certificate](../documentation_pics/opc_ua_download_certificate.png)button: Provides a way to download the current own certificate.