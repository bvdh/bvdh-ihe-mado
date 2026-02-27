Profile:  MadoXcWadoEndpoint
Parent: MadoWadoEndpoint
Title: "Endpoint: IHE-XC-WADO"
Description: """
This profile defines the XC-WADO endpoint for accessing imaging study content.
"""
* insert SetFmmAndStatusRule( 1, "draft" )
* extension contains XcWadoLocationUIDExtension named locationUid 0..1

  
Extension: XcWadoLocationUIDExtension
Title: "Extension: Location UID"
Description: "The location UID of the source of the WADO URL. See XC-WADO and https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_A.35.4.3.html#table_A.35.4-1."
Context: Endpoint
* insert SetFmmAndStatusRule( 1, draft )
* value[x] only string
