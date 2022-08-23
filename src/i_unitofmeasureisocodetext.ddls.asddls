@AbapCatalog.sqlViewName: 'IUOMISOCODETEXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.buffering.status: #ACTIVE
@AbapCatalog.buffering.type: #FULL
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Unit of Measure ISO Code Text'

@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API

@ClientHandling.type: #INHERITED
@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.dataCategory: #TEXT
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.representativeKey: 'UnitOfMeasureISOCode'
@ObjectModel.supportedCapabilities: [#LANGUAGE_DEPENDENT_TEXT,
                                     #SQL_DATA_SOURCE, 
                                     #CDS_MODELING_DATA_SOURCE, 
                                     #CDS_MODELING_ASSOCIATION_TARGET]
                                     
@Analytics.internalName: #LOCAL
@Analytics: {dataExtraction.enabled: true}

define view I_UnitOfMeasureISOCodeText as select from t006j

  association[1..1] to I_UnitOfMeasureISOCode as _ISOCode
   on $projection.UnitOfMeasureISOCode = _ISOCode.UnitOfMeasureISOCode
  association[0..1] to I_Language as _Language
    on $projection.Language = _Language.Language  
{
  key Language,
  key UnitOfMeasureISOCode,
      UnitOfMeasureISOCodeName
}