
{% include variable-definitions.md %}

The mapping between the DICOM KOS and FHIR format is presented in the table below. In order to make it clear what concept is addressed, the first column contains a short
characterization of the concept. The other two columns show the corresponding FHIR and DICOM KOS fields. In the case that more than one field is presented, it is
expected that the concept will be present in each of them.

{:.grid}
|	Concept		|	FHIR			|	KOS						|
|	------------------------------------		|	------------------------------------			|	------------------------------------						|
|	Study	Study Instance UID	|	MadoImagingStudy.	identifier[studyInstanceUid]		|	GeneralStudy	StudyInstanceUID	 + 	KeyObjectDocument-Referenced Request Sequence-Study Instance UID			|
|	Study	Modalities	|	MadoImagingStudy.	modality		|	GeneralStudy	Modality					|
|	Study	Started	|	MadoImagingStudy.	started		|	GeneralStudy	StudyDate	 + 	StudyTime			|
|	Study	anatomicalRegion	|	MadoImagingStudy.	extension[anatomicalRegion]		|		SR-TID1600:EV (123014, DCM, "Target Region")					|
|	Study	Description	|	MadoImagingStudy.	description		|	GeneralStudy	StudyDescription					|
|	Study	endpoint	|	MadoImagingStudy.	endpoint -> XcWadoEndpoint		|	KeyObjectDocument-CurrentRequestedProcedureEvidenceSequence-Retrieve Location UID						|
|	Study	endpoint.locationUid	|	MadoImagingStudy.	endpoint -> XcWadoEndpoint.extension[locationUid]		|	KeyObjectDocument-CurrentRequestedProcedureEvidenceSequence-Retrieve URL						|
|	Study	endpoint.url	|	MadoImagingStudy.	endpoint -> XcWadoEndpoint.address		|							|
|	Study	 series	|	MadoImagingStudy.	series		|							|
|	Study	 series.seriesUid	|	MadoImagingStudy.	series.uid		|		SR-TID1602:EV (ddd006, DCM, “Series Instance UID”)					|
|	Study	 series.number	|	MadoImagingStudy.	series.number		|		SR-TID1602:EV (ddd005, DCM, “Series Number”)					|
|	Study	 series.seriesModality	|	MadoImagingStudy.	series.modality		|		SR-TID1602:EV (121139, DCM, "Modality")					|
|	Study	 series.description	|	MadoImagingStudy.	series.description		|		SR-TID1602:EV (ddd002, DCM, “Series Description”)					|
|	Study	 series.numberOfInstances	|	MadoImagingStudy.	series.numberOfInstances		|		SR-TID1602:EV (ddd007, DCM, “Number of Series Related Instances”) 					|
|	Study	 series.seriesEndpoint	|	MadoImagingStudy.			|							|
|	Study	 series.bodySite	|	MadoImagingStudy.	series.bodySite		|		SR-TID1602:EV (123014, DCM, "Target Region")					|
|	Study	 series.specimen	|	MadoImagingStudy.	series.specimen		|							|
|	Study	 series.started	|	MadoImagingStudy.	series.started		|		SR-TID1602:EV (ddd003, DCM, "Series Date")	 + 	SR-TID1602:EV (ddd004, DCM, "Series Time")			|
|	Study	 series.instancesInTheSeries	|	MadoImagingStudy.	series.instance		|							|
|	Study	 series.instancesInTheSeries.instanceTitle	|	MadoImagingStudy.	series.instance.title		|							|
|	Study	 series.instancesInTheSeries.instanceUid	|	MadoImagingStudy.	series.instance.uid		|		SR-TID1601:EV (ddd008, DCM, “Instance Number”)					|
|	Study	 series.instancesInTheSeries.instanceUid	|	MadoImagingStudy.	series.instance[representative]		|		SR-TID2010:8	 + 	SR-TID2010:9	 + 	SR-TID2010:10	|
|	Study	 series.instancesInTheSeries.sopClass	|	MadoImagingStudy.	series.instances.sopClass		|							|
|	Study	 series.instancesInTheSeries.instanceNumber	|	MadoImagingStudy.	series.instance.number		|		SR-TID1601:EV (ddd008, DCM, “Instance Number”)					|
|	Study	 series.instancesInTheSeries.numberOfFrames	|	MadoImagingStudy.	series.instance.extension[numberOfFrames]		|		SR-TID1601:EV (121140, DCM, “Number of Frames”)					|
|			|				|							|
|			|				|							|
|	Patient	Name	|	MadoImagingStudy.subject->Patient.	name		|	PatientModule	PatientName					|
|	Patient	ID	|	MadoImagingStudy.subject->Patient.	identifier		|	PatientModule	PatientID	 + 	IssuerOfPatientID	 + 	OtherPatientIDsSequence	|
|	Patient	Birthdate	|	MadoImagingStudy.subject->Patient.	birthdate		|	PatientModule	PatientBirthDate					|
|	Patient	Sex	|	MadoImagingStudy.subject->Patient.	gender		|	PatientModule	PatientSex					|
|			|				|							|
|	RequestedProcedure	Accession Number	|	MadoImagingStudy.	basedOn[order].identifier		|	GeneralStudy	AccessionNumber	 + 	IssuerOfAccessionNumberSequence			|
|	RequestedProcedure	OrderId	|	basedOn[order]->ServiceRequest.	identifier		|	GeneralStudy	PlacerId					|
|	RequestedProcedure	requester	|	basedOn[order]->ServiceRequest.	requester		|	GeneralStudy	ReferringPhysiciansName					|
|	RequestedProcedure	reason	|	basedOn[order]->ServiceRequest.	reasonCode		|	GeneralStudy	Reason For Performed Procedure Code Sequence					|
|			|				|							|
|	PerformedProcedure	procedureCode	|	MadoImagingStudy.	procedureCode		|							|
|			|				|							|
|	MADO Author	manufacturer	|	MadoAuthor	manufacturer		|	GeneralEquipment	Manufacturer					|
|	MADO Author	institution name	|	MadoAuthor.owner->Organization.	name		|	GeneralEquipment	Institution Name					|
|	MADO Author	instutution type	|	MadoAuthor.owner->Organization.	type		|	GeneralEquipment	Institution Code Sequence					|
