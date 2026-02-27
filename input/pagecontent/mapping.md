
{% include variable-definitions.md %}

|	Concept		|	FHIR			|	KOS						|
|	------------------------------------		|	------------------------------------			|	------------------------------------						|
|	Study	Study Instance UID	|	MadoImagingStudy	identifier[studyInstanceUid]		|	GeneralStudy	StudyInstanceUID	 + 	Key Object Document-Referenced Request Sequence-Study Instance UID			|
|	Study	Modalities	|	MadoImagingStudy	modality		|	GeneralStudy	Modality					|
|	Study	Started	|	MadoImagingStudy	started		|	GeneralStudy	sStudyDate	 + 	StudyTime			|
|	Study	anatomicalRegion	|	MadoImagingStudy	extension[anatomicalRegion]		|		SR-TID1600:EV (123014, DCM, "Target Region")					|
|	Study	Description	|	MadoImagingStudy	description		|	GeneralStudy	StudyDescription					|
|	Study	endpoint	|	MadoImagingStudy	endpoint->XcWadoEndpoint		|	Key Object Document-Current Requested Procedure Evidence Sequence-Retrieve Location UID						|
|	Study	endpoint.locationUid	|	MadoImagingStudy	endpoint->XcWadoEndpoint.extension[locationUid]		|	Key Object Document-Current Requested Procedure Evidence Sequence-Retrieve URL						|
|	Study	endpoint.url	|	MadoImagingStudy	endpoint->XcWadoEndpoint.address		|							|
|	Study	 series	|	MadoImagingStudy	series		|							|
|	Study	 series.seriesUid	|	MadoImagingStudy	series.uid		|		SR-TID1602:EV (ddd006, DCM, “Series Instance UID”)					|
|	Study	 series.number	|		series.number		|		SR-TID1602:EV (ddd005, DCM, “Series Number”)					|
|	Study	 series.seriesModality	|		series.modality		|		SR-TID1602:1EV (121139, DCM, "Modality")					|
|	Study	 series.description	|		series.description		|		SR-TID1602:EV (ddd002, DCM, “Series Description”)					|
|	Study	 series.numberOfInstances	|				|		SR-TID1602:EV (ddd007, DCM, “Number of Series Related Instances”) 					|
|	Study	 series.seriesEndpoint	|				|							|
|	Study	 series.bodySite	|		series.bodySite		|		SR-TID1602:EV (123014, DCM, "Target Region")					|
|	Study	 series.specimen	|		series.specimen		|							|
|	Study	 series.started	|		series.started		|		SR-TID1602:EV (ddd003, DCM, "Series Date")	 + 	SR-TID1602:EV (ddd004, DCM, "Series Time")			|
|	Study	 series.instancesInTheSeries	|		series.instance		|							|
|	Study	 series.instancesInTheSeries.instanceTitle	|		series.instance.title		|							|
|	Study	 series.instancesInTheSeries.instanceUid	|		series.instance.uid		|		SR-TID1601:EV (ddd008, DCM, “Instance Number”)					|
|	Study	 series.instancesInTheSeries.instanceUid	|	isrepresentative	series.instance[representative]		|		SR-TID2010:8	 + 	SR-TID2010:9	 + 	SR-TID2010:10	|
|	Study	 series.instancesInTheSeries.sopClass	|		series.instances.sopClass		|							|
|	Study	 series.instancesInTheSeries.instanceNumber	|		series.instance.number		|		SR-TID1601:EV (ddd008, DCM, “Instance Number”)					|
|	Study	 series.instancesInTheSeries.numberOfFrames	|		series.instance.extension[numberOfFrames]		|		SR-TID1601:EV (121140, DCM, “Number of Frames”)					|
|			|				|							|
|			|				|							|
|	Patient	Name	|	MadoImagingStudy.subject->Patient	name		|	PatientModule	PatientName					|
|	Patient	ID	|	MadoImagingStudy.subject->Patient	identifier		|	PatientModule	PatientID	 + 	IssuerOfPatientID	 + 	OtherPatientIDsSequence	|
|	Patient	Birthdate	|	MadoImagingStudy.subject->Patient	birthdate		|	PatientModule	PatientBirthDate					|
|	Patient	Sex	|	MadoImagingStudy.subject->Patient	gender		|	PatientModule	PatientSex					|
|			|				|							|
|	Order	Accession Number	|	MadoImagingStudy	basedOn[order].identifier		|	GeneralStudy	AccessionNumber	 + 	IssuerOfAccessionNumberSequence			|
|	Order	OrderId	|	basedOn[order]->ServiceRequest	identifier		|	GeneralStudy	PlacerId					|
|	Order	requester	|	basedOn[order]->ServiceRequest	requester		|	GeneralStudy	ReferringPhysiciansName					|
|	Order	reason	|	basedOn[order]->ServiceRequest	reasonCode		|	GeneralStudy	Reason For Performed Procedure Code Sequence					|
|			|				|							|
|	MADO Author	manufacturer	|	MadoAuthor	manufacturer		|	GeneralEquipment	Manufacturer					|
|	MADO Author	institution name	|	MadoAuthor.owner->Organization	name		|	GeneralEquipment	Institution Name					|
|	MADO Author	instatitution type	|	MadoAuthor.owner->Organization	type		|	GeneralEquipment	Institution Code Sequence					|
                            
