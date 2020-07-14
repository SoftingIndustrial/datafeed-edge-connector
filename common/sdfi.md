# PLC Address Space Configuration by *.SDFI* File

The symbolic names of the SIMATIC S7 data need to be provided via an *.SDFI*
file. You can generate the *.SDFI* file using the Softing **dataFEED Exporter**
tool. This tool uses the STEP 7 or TIA Portal project files as input and allows
to select one SIMATIC S7 device to generate the *.SDFI* file containing the
symbol definition.
Proceed as follows to convert and import symbol files:

1. Download [**dataFEED Exporter**](https://data-intelligence.softing.com/products/iot-gateways/datafeed-exporter/#tx-dftabs-tabContent2)
   to that PC where the PLC configuration software (STEP 7 or TIA Portal)
   is installed
2. Execute the installation file and follow the instructions of the
   installation wizard
3. Run **dataFEED Exporter**
4. Follow the **dataFEED Exporter** instructions to load and convert your
   STEP 7 or TIA Portal symbol files
5. Save the converted *.SDFI* file to your PC
6. Upload the *.SDFI* file to the
   [Siemens SINUMERIK 840D connection configuration](#siemens-sinumerik-840d-connection-configuration).
