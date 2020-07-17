# Azure

This section shall provide information which shall be used as a guidance to set up and run Softing's connectivity gateway offerings in the Azure IoT edge environment.

Available as an Azure IoT edge module in the [Azure Marketplace ](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/softingindustrialautomationgmbh1583307147861.softing-datafeed-edgeconnector-siemens?tab=Overview), the dataFEED edgeConnector Siemens can be deployed, remotely, on existing Azure IoT edge devices.



## Deployment via the Azure portal

A generic description for deploying the IoT edge modules from the Azure portal can be found [here](https://docs.microsoft.com/en-us/azure/iot-edge/how-to-deploy-modules-portal). 

To deploy the dataFEED edgeConnector Siemens to an existing IoT edge device follow the steps below:

1. In the Azure portal, navigate to your IoT Hub.

1. On the left pane, under **Automatic Device Management**, select **IoT Edge**.

1. Select the IoT Edge device that is to receive the deployment.

1. On the upper bar, select **Set Modules**.

   ![iotedge_device_properties](./images/iotedge_device_properties.png)

1. In the **IoT Edge Modules** section, click **Add**, and select **Marketplace Module** from the drop-down menu.

   ![add_marketplace](./images/add_marketplace.png)

1. In the Marketplace search input fill in **dataFEED**, and the filtered results should show you the dataFEED edgeConnector Siemens, select by clicking on the result.

   ![marketplace_search_filter](./images/marketplace_search_filter.png)

1. The module should now be visible in the modules list.

   ![marketplace_search_filter](./images/modules_info.png)
   
1. Review the container settings by clicking its name

1. In the module settings tab ensure that the **Restart Policy** is **always** and the **Desire State** is **running**
![marketplace_search_filter](./images/module_settings.png)

1. The are no environmental variables needed to run the modules nor module twin properties to be set up for the module to work properly, this options can be left blank.

1. In the container create options tab make sure that the default Create options as defined in the JSON below. The ports are used for configuration (8099) and for OPC UA Endpoints (4897 - default preconfigured OPC UA server endpoint - and 4810 to 4813 freely available to define new OPC UA server endpoints) 
   ```
    {
    "ExposedPorts": {
        "8099/tcp": {},
        "4987/tcp": {}
    },
    "HostConfig": {
        "NetworkMode": "bridge",
        "PortBindings": {
            "8099/tcp": [
                {
                    "HostPort": "8099"
                }
            ],
            "4810/tcp": [
                {
                    "HostPort": "4810"
                }
            ],
            "4811/tcp": [
                {
                    "HostPort": "4811"
                }
            ],
            "4812/tcp": [
                {
                    "HostPort": "4812"
                }
            ],
            "4813/tcp": [
                {
                    "HostPort": "4813"
                }
            ],
            "4897/tcp": [
                {
                    "HostPort": "4897"
                }
            ]
        }
    }
   }
   ```

1.	Click update when the information is complete and correct.

   ![marketplace_search_filter](./images/module_update.png)
   
13. To finalize the configuration click on ```Review + create``` then ```Create``` buttons.

14. The deployment was successful if the module's reported status is similar to the information above. The modules has to be specified in the deployment, has to be reported by the IoT edge device and the most important it has to be running.

       ![marketplace_search_filter](./images/module_status.png)
## Deployment via the Azure CLI

To deploy dataFEED edgeConnector Siemens through the [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) a deployment manifesto for the IoT edge device is required.

It is assumed that the user is able to connect to Azure user the cli and has the permissions requested to configure the iot hub.

Command to [apply a deployment manifesto](https://docs.microsoft.com/en-us/azure/iot-edge/how-to-deploy-modules-cli#deploy-to-your-device) to an IoT edge device:

```powershell
az iot edge set-modules --device-id [device id] --hub-name [hub name] --content [file path]
```

The following <a href="./deployment_demo.json">deployment manifesto</a> can be saved and used to deploy a demonstrative IoT edge device containing the **dataFEED edgeConnector** module besides the required  communication  and management modules (edgeHub and edgeAgent).

```
{
    "modulesContent": {
        "$edgeAgent": {
            "properties.desired": {
                "modules": {
                    "dataFEEDedgeConnectorSiemens": {
                        "settings": {
                            "image": "marketplace.azurecr.io/softingindustrialautomationgmbh1583307147861/datafeed-edgeconnector-siemens",
                            "createOptions": "{\"ExposedPorts\":{\"8099/tcp\":{},\"4987/tcp\":{}},\"HostConfig\":{\"NetworkMode\":\"bridge\",\"PortBindings\":{\"8099/tcp\":[{\"HostPort\":\"8099\"}],\"4810/tcp\":[{\"HostPort\":\"4810\"}],\"4811/tcp\":[{\"HostPort\":\"4811\"}],\"4812/tcp\":[{\"HostPort\":\"4812\"}],\"4813/tcp\":[{\"HostPort\":\"4813\"}],\"4897/tcp\":[{\"HostPort\":\"4897\"}]}}}"
                        },
                        "type": "docker",
                        "version": "1.0",
                        "status": "running",
                        "restartPolicy": "always"
                    }
                },
                "runtime": {
                    "settings": {
                        "minDockerVersion": "v1.25"
                    },
                    "type": "docker"
                },
                "schemaVersion": "1.0",
                "systemModules": {
                    "edgeAgent": {
                        "settings": {
                            "image": "mcr.microsoft.com/azureiotedge-agent:1.0",
                            "createOptions": ""
                        },
                        "type": "docker"
                    },
                    "edgeHub": {
                        "settings": {
                            "image": "mcr.microsoft.com/azureiotedge-hub:1.0",
                            "createOptions": "{\"HostConfig\":{\"PortBindings\":{\"443/tcp\":[{\"HostPort\":\"443\"}],\"5671/tcp\":[{\"HostPort\":\"5671\"}],\"8883/tcp\":[{\"HostPort\":\"8883\"}]}}}"
                        },
                        "type": "docker",
                        "status": "running",
                        "restartPolicy": "always"
                    }
                }
            }
        },
        "$edgeHub": {
            "properties.desired": {
                "routes": {
                    "route": "FROM /messages/* INTO $upstream"
                },
                "schemaVersion": "1.0",
                "storeAndForwardConfiguration": {
                    "timeToLiveSecs": 7200
                }
            }
        },
        "dataFEEDedgeConnectorSiemens": {
            "properties.desired": {}
        }
    }
}
```