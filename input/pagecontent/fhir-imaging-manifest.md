{% include variable-definitions.md %}

The imaging manifest represents a summary of the data stored in a DICOM imaging study as is stored in a PACS. In document based deployments, it is the '*document*' that is searched for and provides the URL's that allow download of the imaging content. It is the data that is provided by a PACS system. The figure below presents an overview of the data that is part of the imaging-manifest.

In order to keep the diagram readable, not all references are included.

{% include img.html img="fhir-manifest-overview.drawio.png" caption="Figure: FHIR Manifest Overview" %}

The manifest is a FHIR bundle that includes the {{ImagingStudy}} resource and at least one {{Endpoint}}. The {{Endpoint}} resources contain the information that allows the client to access the DICOM data. The current model identifies two different {{Endpoint}}s. One that defines an {{DICOMwebWado}} which will allow download of the imaging data as well as extraction of thumbnails and retrieve the image data in other formats (e.g., jpeg). The other {{Endpoint}} defines the information needed to launch an {{iheIid}} based viewer.

Besides the {{ImagingStudy}} and {{Endpoint}} resources, it is also recommended to include additional resources that reflect information present in DICOM such as information on the patient, performer, procedure and imaging device.

