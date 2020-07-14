# OPC UA Endpoint Configuration

The OPC UA Server component allows the **dataFEED edgeConnector** modules to
create OPC UA Server endpoints to be used by external OPC UA Clients for
accessing the PLC data.

## Enabling/Disabling the OPC UA Server Component

To enable or disable the OPC UA Server component navigate to
***Connectivity -> OPC UA -> OPC UA Server Application Settings*** and change
the status of the component by checking/unchecking the
***Activate/Deactivate OPC UA Server*** checkbox.

![OPC UA server enable](../documentation_pics/opc_ua_enable_server.png)

## OPC UA Server Endpoints

Information about all configured OPC UA Server endpoints is centralized and
accessible by navigating to ***Connectivity -> OPC UA -> OPC UA Server
Application Settings -> OPC UA Server Endpoints***.

![OPC UA Server Endpoints page](../documentation_pics/opc_ua_server_endpoints_page.png)

The page consists of two areas:

- ***OPC UA Server Endpoints***
- ***Endpoint Users - Identities***

### OPC UA Server Endpoints

In the ***OPC UA Server Endpoints*** table, all configured OPC UA Server
endpoints are displayed, each row representing one connection. The information
in the table can be sorted by clicking the appropriate column header.

![OPC UA Server Endpoints table](../documentation_pics/opc_ua_server_endpoints_table.png)

| Column Name          | Information Details                                          |
| -------------------- | ------------------------------------------------------------ |
| Endpoint Name        | User defined endpoint name                                  |
| Endpoint URL         | Endpoint URL based on:<br> - user defined transport protocol (*opc.tcp* or *http*)<br> - fully qualified domain name of the computer running the **dataFEED edgeConnector** module<br>- user defined port<br>- user defined URL path |
| Endpoint Description | User defined endpoint description text<br>This field can be used to include additional information or remarks about the endpoint. |
| URLs                 | List of all possible URLs which can be used to access the configured endpoint |
| Enabled              | Configuration status of the OPC UA Server endpoint<br>See the table below for more details. |

| Endpoint Status                                               | Icon                                               | Details                                                      |
| ------------------------------------------------------------ | -------------------------------------------------- | ------------------------------------------------------------ |
| *Disabled*                                                   | ![Enabled](../documentation_pics/SwitchOn.png)     | The endpoint is configured as *Disabled*, therefore it is not accessible by any OPC UA Client.<br>Clicking the current configuration state icon triggers a state toggle: *Disabled* -> *Enabled* |
| *Enabled*                                                    | ![Disabled](../documentation_pics/SwitchOff.png)   | The endpoint is configured as *Enabled*, it is accessible and able to accept incoming connection requests if other environmental conditions are met (e.g. license slots are available).<br>Clicking the current configuration status icon triggers a status toggle: *Enabled* -> *Disabled* |
| *Access Protection temporarily or permanently disabled*        | ![red](../documentation_pics/SwitchOn_WarnRed.png)    | The endpoint is configured as *Enabled*, but it has been disabled by the *Disabled by the access protection* feature because the configured access protection restrictions were met.<br>By checking the access protection applied settings it can be found if the endpoint is temporarily or permanently disabled.<br>Clicking the current configuration status icon triggers a status toggle resetting the current access protection status and re-enabling the endpoint<br>*Access Protection temporarily or permanently disabled* -> *Enabled* |
| *Access Protection IPs or certificated prevented authentication* | ![yellow](../documentation_pics/SwitchOn_WarnYellow.png) | The endpoint is configured as *Enabled*, it is accessible and able to accept incoming connection requests, but it rejects some connections attempts based on IPs or certificates  as resulted from the access protection configuration.<br>This state can be manually reset by accessing the access protection settings and disabling/enabling the authentication restrictions for remote IPs and certificates.<br>Clicking the current configuration status icon triggers a status toggle, but it **shall not reset** the access protection status<br>*Access protection IPs or certificates prevented authentication* -> *Disabled* |

From the title bar of the ***OPC UA Server Endpoints*** table a new endpoint can
be added or an exiting endpoint can be edited or deleted:

- Add a new endpoint by clicking the ***Add Connection***
  ![Add Connection](../documentation_pics/add_connection.png) button.  
- Edit an existing endpoint by first selecting the endpoint from the overview
  table and then clicking the ***Edit Connection***
  ![Edit Connection](../documentation_pics/edit_connection.png) button. 
- Delete an existing endpoint by first selecting the endpoint from the overview
  table and then clicking the ***Delete Connection***
  ![Delete Connection](../documentation_pics/delete_connection.png) button.  

#### OPC UA Server Endpoint Creation

When adding a new OPC UA Server endpoint or editing an existing OPC UA Server
endpoint from the ***OPC UA Server Endpoints*** page the endpoint creation page
is loaded which provides a simple and intuitive interface for configuring a new
or editing an existing OPC UA Server endpoint.

![OPC UA Server Endpoint creation](../documentation_pics/opc_ua_endpoint_creation.png)

The configuration parameters are described in the table below:

| Parameter Name                       | Default Value                      | Description                                                  |
| ------------------------------------ | ---------------------------------- | ------------------------------------------------------------ |
| Endpoint Name                        | \<empty\>                          | Connection name as it shows up in the OPC UA Client connection overview page<br>This name shall also be used by the OPC Client when connecting to an external OPC UA Server<br>**Note**<br>The following characters are not supported in the ***Endpoint Name*** field:  *# ^ < > / $* |
| Enabled                              | *Enabled*                          | Either enables (checked) or disables (unchecked) the currently configured OPC UA Server endpoint. |
| OPC UA Endpoint Protocol             | *TCP*                              | The OPC UA Server endpoint transport protocol is configurable by selecting the appropriate radio button. |
| OPC UA Endpoint Hostname             | Hostname                           | Pre-populated, read-only field defining the computer's hostname. |
| OPC UA Endpoint Port                 | 4810                               | OPC UA Server port number<br>Populated with an available port, not assigned to an existing endpoint, starting with port *4180.*<br>**Note**<br>Ports lower than *1024* are not allowed. The ***OPC UA Endpoint Port*** field is automatically validated. |
| OPC UA Endpoint Path                 | *endpoint1*                          | User editable OPC UA Server endpoint URL path<br>Pre-populated with a string in the form *endpoint[index]* where index may change if the path already exists |
| Endpoint URL                         | opc.tcp://[hostname]:[port]/[path] | Configured OPC UA Server endpoint URL based on the selected *transport protocol*, *port number*, *URL path* as well as the existing *hostname* |
| Authentication Settings              | All                                | Authentication method supported by the endpoint<br>**Note:**<br>Supported settings: *Anonymous*, *Username & Password* and *Certificate* |
| Message Security Mode                | All                                | Endpoint message security mode (whether signing or encryption is used when exchanging messages)<br>**Note:**<br>Supported message security modes: *None*, *Sign*, *SignAndEncrypt* |
| Security Policy                      | All                                | Endpoint security policy (encryption algorithm applied to the messages)<br>**Note**<br>Supported security policies: *None*, *Basic256*, *Basic256Sha256*, *Basic128Rsa15*, *Aes128_Sha256_RsaOaep* and *Aes256_Sha256_RsaPss* |
| Max Number of Concurrent Connections | 10                                 | Maximum number of concurrent connections from external OPC UA Clients supported by endpoint |
| Access Rights                        | All                                | Configuration of endpoint's supported services<br>Enable the service by checking the appropriate service checkbox.<br>**Note**<br>Supported services: *Browse*, *Read*, *Write*,  *Subscribe*, *Method* |
| Endpoint Description                 | \<empty\>                          | User defined endpoint description text<br>Can be used to include additional information or remarks about the endpoint |

##### Application Certificates

The certificates page provides an interface for managing the SSL certificates
stored in the endpoint's PKI store.

![OPC UA Server Endpoint Application certificates](../documentation_pics/opc_ua_endpoint_creation_application_certificates.png)

###### Own Application Certificate

Shows the certificate used to identify the **dataFEED edgeConnector** endpoint
application instance. This certificate is uniquely created for each OPC UA
Server endpoint.

Only one certificate should be visible in the own certificate area. This is the
certificate which is used by the running OPC UA Server endpoint to identify
itself.

![OPC UA Server Endpoint own certificate](../documentation_pics/opc_ua_endpoint_own_certificate.png)

Several operations are accessible using the buttons placed top right:

- ***Reuse Application Certificate***
  ![OPC UA reuse certificate](../documentation_pics/opc_ua_reuse_certificate.png)
  button  
  Provides the possibility to reuse a certificate which is already in use to
  identify a different configured OPC UA Server endpoint<br>Clicking the button
  brings up a window which lists the available OPC UA Server endpoints. To reuse
  the certificate of an existing endpoint, select the endpoint in the list and
  click the ***Reuse Certificate*** button.

- ***Generate Application Certificate*** ![OPC UA generate certificate](../documentation_pics/opc_ua_generate_certificate.png) button  
  Creates a new replacement certificate for the current own application
  certificate

- ***Upload Application Certificate*** ![OPC UA upload certificate](../documentation_pics/opc_ua_upload_certificate.png) button  
  Provides a simple way to replace the currently used application certificate
  with an already existing certificate<br>The upload certificate windows opens
  by clicking the ***Upload certificate*** button. In this window the new
  certificate file can be selected by pressing the ***Choose File*** button.

  If the certificate requires a password, the corresponding password input field
  has to be used, otherwise the field should be left empty.

- ***Download Application Certificate*** ![OPC UA download certificate](../documentation_pics/opc_ua_download_certificate.png) button  
  Provides a way to download the current own certificate

######  Trusted Application Certificates

Allows manipulation and information retrieval on the current OPC UA Server
endpoint's trusted certificates. All remote OPC UA Client application instances
whose certificates are listed in this view have a trust relationship established
with the current endpoint.

![OPC UA Endpoint trusted certificate](../documentation_pics/opc_ua_endpoint_trusted_certificates.png)

Several operations are accessible using the buttons placed on top right:

- ***Upload Certificate*** ![OPC UA upload certificate](../documentation_pics/opc_ua_upload_certificate.png) button  
  Provides a way to add a pre-owned certificate, locally stored, to the *Trusted
  Certificates* folder. After clicking the ***Upload Certificate*** button a new
  view opens, where the new certificate file shall be selected by pressing the
  ***Choose file*** button. To finalize the action press the
  ***Upload Certificate*** button.  

  Uploading a trusted certificate is required when an external OPC UA Client is
  expected to establish a secure connection to an existing OPC UA Server
  endpoint. In this case the external OPC UA Client's certificate needs to be
  uploaded in the OPC UA Server endpoint trusted certificates section. An
  alternative solution for the above scenario is to entrust an already rejected
  certificate.

- ***Delete Certificate*** ![OPC UA delete certificate](../documentation_pics/opc_ua_delete_certificate.png) button  
  Deletes the currently selected certificate from the trusted certificates
  folder. After deletion the trust relationship with the deleted certificate
  owner application will be invalidated.

###### Rejected Application Certificates

All remote OPC UA application instance certificates whose connection
establishment to the current OPC UA endpoint has failed due to trust relationship
conditions are listed in the ***Rejected Certificates*** window.

The **dataFEED edgeConnector** does not automatically trust remote OPC UA application instance certificates therefore secured connection attempts may result in remote certificates automatically stored in the *Rejected Certificates* folder.

![OPC UA Endpoint rejected certificate](../documentation_pics/opc_ua_endpoint_rejected_certificates.png)

Several operations are accessible using the buttons placed on top right:

- ***Move to Trusted*** ![OPC UA move certificate](../documentation_pics/opc_ua_move_certificate.png) button  
  Provides the functionality needed to trust an already rejected OPC UA
  application instance by moving its rejected certificate into the
  *Trusted Certificates* folder. Clicking the ***Move to Trusted*** button will
  move the selected rejected certificate into the *Trusted Certificates* folder.
  The result of this action is visible in the configuration page and the
  previously rejected certificate now is visible in the trusted certificates
  list. Any previously trust-related failed connection attempts, will
  subsequently succeed after moving the certificates to the *Trusted Certificates* folder.

  This is an important manual step required to enable external OPC UA Clients to
  connect to a *secured OPC UA Server endpoint* connection.

- ***Delete Certificate*** ![OPC UA delete certificate](../documentation_pics/opc_ua_delete_certificate.png) button  
  Deletes the currently selected certificate from the *Rejected Certificates*
  folder.

###### Application Certificate Properties

Information about the selected certificate is available in the certificates
properties area.

![OPC UA Endpoint certificate properties](../documentation_pics/opc_ua_endpoint_certifiate_properties.png)

### Endpoint Users - Identities

In this table details about the users assigned to the currently selected
endpoint are provided.

![OPC UA Endpoint users](../documentation_pics/opc_ua_server_endpoints_users_table.png)

| Column Name   | Information details                                          |
| ------------- | ------------------------------------------------------------ |
| Username      | Name of the user                                            |
| Address Spaces | Address space exposed to the OPC UA Client connection to the selected endpoint and authenticated with the current. |
| Certificates   | Validity status of the certificates attached to the user or the absence of any certificate<br>Possible values are:<br> - *Certificates were found and all are fine*: ![OkGreen](../documentation_pics/OkGreen.png) <br> - *At least one certificate will expire soon*: ![WarningExpireYellow](../documentation_pics/WarningExpireYellow.png)<br> - *At least one certificate has already expired*: ![WarningRed](../documentation_pics/WarningExpireRed.png)<br> - *No certificates are attached to the current user*: ![DeleteRed](../documentation_pics/DeleteRed.png) |
| Enabled       | Configuration status of the assignment of the current user to the selected OPC UA Server endpoint<br>Possible values are *Enabled* or *Disabled*.<br>Clicking the current configuration status icon triggers a status toggle: *Enabled* -> *Disabled*; *Disabled* -> *Enabled* |

From the title bar of the ***Endpoint Users - Identities*** table a new user can
be added or an existing user can be edited or deleted:

- Add a new user by clicking the ***Add User*** ![Add user](../documentation_pics/opc_ua_add_user.png) button.  
- Edit an existing user by first selecting it from the table and then clicking
  the ***Edit User*** ![opc_ua_edit_user](../documentation_pics/opc_ua_edit_user.png) button. 
- Delete an existing user by first selecting it from the table and clicking the ***Delete User*** ![opc_ua_delete_user](../documentation_pics/opc_ua_delete_user.png) button.  

#### User Settings

Any newly created OPC UA Server endpoint requires a user to be assigned before it
can be used by external OPC UA Clients.

Adding a new endpoint user or editing an existing endpoint user from the
***OPC UA Server Endpoints*** page will load the user creation page. When
editing an existing user the ***Username*** drop down list is deactivated, and
also the creation of new users is disabled.

![OPC UA Endpoint User Add](../documentation_pics/opc_ua_endpoint_user_add.png)

The ***User Settings*** configuration tab allows selecting an already existing
user by using the ***Username*** drop down list or create a new system user by
clicking the ***Create New User*** button. The user settings information to be
filled in is described in the following table:

| Parameter name                       | Default Value              | Details                                                      |
| ------------------------------------ | -------------------------- | ------------------------------------------------------------ |
| Username                             | \<empty\>                  | The endpoint's authorized user                      |
| Enabled                              | *True*                     | Enabled/Disabled status of the endpoint's authorized user<br>Once disabled the username cannot be used for authentification while an OPC UA Client establishes a connection to the endpoint. |
| Max Number of Concurrent Connections | 10                         | Maximum allowed number of concurrent OPC UA Client connections to the selected endpoint being authenticated with the username defined in the ***Username*** filed |
| Address Space                        | AllConnectionsAddressSpace | Address space exposed to the OPC UA Client connection to the selected endpoint and authenticated with the username defined in the ***Username*** field |
| Access Rights                        | All                        | Services allowed for the username defined in the ***Username*** field |

