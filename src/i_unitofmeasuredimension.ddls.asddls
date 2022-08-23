@AbapCatalog.sqlViewName: 'IUNITOFMEADIM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.buffering.status: #ACTIVE
@AbapCatalog.buffering.type: #FULL
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Unit of Measure Dimension'

@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API

@ClientHandling.type: #INHERITED
@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.representativeKey: 'UnitOfMeasureDimension'
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE, 
                                     #CDS_MODELING_DATA_SOURCE, 
                                     #CDS_MODELING_ASSOCIATION_TARGET]

@Analytics.internalName: #LOCAL
@Analytics:{ dataCategory: #DIMENSION, dataExtraction.enabled: true }

define view I_UnitOfMeasureDimension 
  as select from t006d
  
  association [0..*] to I_UnitOfMeasureDimensionText as _Text 
    on $projection.UnitOfMeasureDimension = _Text.UnitOfMeasureDimension

{
  key UnitOfMeasureDimension,
      LengthExponent,
      MassExponent,
      TimeExponent,
      ElectricCurrentExponent,
      TemperatureExponent,
      MoleQuantityExponent,
      LuminosityExponent,
      UnitOFMeasureSiUnit,
      HasUnitsWithTemperatureSpec,
      HasUnitsWithPressureSpec
}