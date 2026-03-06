
Instance: wado-url-endpoint-84713519
InstanceOf: MadoWadoEndpoint
Usage: #example
* status = #active
* connectionType = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#dicom-wado-rs "DICOM WADO-RS"
* name = "WADO endpoint"
* payloadType.text = "DICOM WADO-RS"
* payloadMimeType[dicom]           = #application/dicom
* payloadMimeType[dicom-octet]     = #application/octet-stream
* payloadMimeType[dicom-xml]       = #application/dicom+xml
* payloadMimeType[dicom-json]      = #application/json
* address = "http://130.145.232.202:8041/dcm4chee-arc/aets/DCM4CHEE/rs"
