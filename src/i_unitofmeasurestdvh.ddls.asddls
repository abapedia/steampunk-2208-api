@AbapCatalog.sqlViewName: 'IUNITOFMEASUREVH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Unit of Measure'
@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.dataCategory: #VALUE_HELP
@ObjectModel.representativeKey: 'UnitOfMeasure'
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass: #CUSTOMIZING

@VDM.viewType: #COMPOSITE
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@Search.searchable: true

define view I_UnitOfMeasureStdVH as select from I_UnitOfMeasure 
{
  key UnitOfMeasure,
      UnitOfMeasure_E,
      UnitOfMeasureLongName,
      UnitOfMeasureDimension,
      UnitOfMeasureDimensionName
}