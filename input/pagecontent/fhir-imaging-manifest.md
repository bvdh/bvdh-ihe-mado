{% include aliases.md %}

The FHIR imaging manifest represents a summary of the data stored in a DICOM imaging study as is stored in a PACS expressed in FHIR. It is the FHIR equivalent of the DICOM KOS manifest. It is the '*document*' that is searched for and provides the URL's that allow download of the imaging content. 

### FHIR Manifest overview

The figure below presents an overview of the data that is part of the imaging-manifest. In order to keep the diagram readable, not all references are included.

{% include img.html img="fhir-manifest-overview.drawio.svg" caption="Figure: FHIR Manifest Overview" %}

The manifest is a FHIR bundle that SHALL conform to the {{MadoFhirBundle}} profile. It includes the {{MadoImagingStudy}} resource, the {{DeviceAuthor}} and at least one {{Endpoint}}.

{{Endpoint}} resources contain the information that allows the client to access the DICOM data. The current model identifies two different {{Endpoint}}s:

* The {{MadoWadoEndpoint}} endpoint which provides a WADO endpoint corresponding the WADO profile defined in this specification.
* The {{MadoXcWadoEndpoint}} endpoint which provides an {{iheXcWado}} endpoint corresponding the {{iheXcWado}} specification.

The {{DeviceAuthor}} profile provides information on the system that generated the manifest.

Besides the {{ImagingStudy}} and {{Endpoint}} resources, also additional resources are present that reflect information present in DICOM such as information on the patient, performer, procedure and imaging device.

### Related FHIR profiles

{% sql {
  "query" : "SELECT name AS Name, title AS Title, Type, Description, Web FROM Resources WHERE Type='StructureDefinition' AND ( Name NOT LIKE '%DocumentReference' )",
  "class" : "lines",
  "columns" : [
    { "name" : "Title"      , "type" : "link"     , "source" : "Name", "target" : "Web"},
    { "name" : "Name"       , "type" : "markdown" , "source" : "Title" },
    { "name" : "Description", "type" : "markdown" , "source" : "Description"}
  ]
} %}

