@AbapCatalog.sqlViewName: 'IUOMTECHNICAL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.buffering.status: #ACTIVE
@AbapCatalog.buffering.type: #GENERIC
@AbapCatalog.buffering.numberOfKeyFields: 2
@AccessControl.authorizationCheck:  #NOT_REQUIRED
@EndUserText.label: 'Unit of Measure Technical Name'

@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API

@ClientHandling.type: #INHERITED
@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.representativeKey: 'UnitOfMeasureTechnicalName'
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE, 
                                     #CDS_MODELING_DATA_SOURCE, 
                                     #CDS_MODELING_ASSOCIATION_TARGET]

@Analytics.internalName: #LOCAL
@Analytics: {dataExtraction.enabled: true}

define view I_UnitOfMeasureTechnicalName as select from t006c 
  association[0..1] to I_Language as _Language
    on $projection.Language = _Language.Language 
   association [0..1] to I_UnitOfMeasure as _UnitOfMeasure
    on $projection.UnitOfMeasure = _UnitOfMeasure.UnitOfMeasure      
{
  key Language,
  key UnitOfMeasureTechnicalName,
      UnitOfMeasure
}