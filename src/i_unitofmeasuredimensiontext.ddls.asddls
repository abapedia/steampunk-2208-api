@AbapCatalog.sqlViewName: 'IUNITOFMEADIMTXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.buffering.status: #ACTIVE
@AbapCatalog.buffering.type: #FULL
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Unit of Measure Dimension Text'

@VDM.viewType: #BASIC 
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API

@ClientHandling.type: #INHERITED
@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.dataCategory: #TEXT
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.representativeKey: 'UnitOfMeasureDimension'
@ObjectModel.supportedCapabilities: [#LANGUAGE_DEPENDENT_TEXT,
                                     #SQL_DATA_SOURCE, 
                                     #CDS_MODELING_DATA_SOURCE, 
                                     #CDS_MODELING_ASSOCIATION_TARGET]

@Analytics.internalName: #LOCAL
@Analytics.dataExtraction.enabled: true

define view I_UnitOfMeasureDimensionText 
  as select from t006t 

  association[1..1] to I_UnitOfMeasureDimension as _UnitOfMeasureDimension
    on $projection.UnitOfMeasureDimension = _UnitOfMeasureDimension.UnitOfMeasureDimension
  association[0..1] to I_Language as _Language 
    on $projection.Language = _Language.Language

{
  key Language,
  key UnitOfMeasureDimension,
      UnitOfMeasureDimensionName
}