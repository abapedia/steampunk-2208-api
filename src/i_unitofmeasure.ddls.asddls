@AbapCatalog.sqlViewName: 'IUNITOFMEASURE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Unit of Measure'
@Search.searchable: true

@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API

@ClientHandling.type: #INHERITED
@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.representativeKey: 'UnitOfMeasure'
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE, 
                                     #CDS_MODELING_DATA_SOURCE, 
                                     #CDS_MODELING_ASSOCIATION_TARGET]

@Analytics.internalName: #LOCAL
@Analytics : {dataCategory: #DIMENSION, dataExtraction.enabled : true}

define view I_UnitOfMeasure 
  as select from t006
   
    association [0..*] to I_UnitOfMeasureText as _Text 
        on $projection.UnitOfMeasure = _Text.UnitOfMeasure
   
    association [0..1] to I_UnitOfMeasureDimension as _Dimension
        on $projection.UnitOfMeasureDimension = _Dimension.UnitOfMeasureDimension 
    association [0..*] to I_UnitOfMeasureDimensionText as _DimensionText
        on $projection.UnitOfMeasureDimension = _DimensionText.UnitOfMeasureDimension 
   
    association [0..1] to I_UnitOfMeasureISOCode as _ISOCode
        on $projection.UnitOfMeasureISOCode = _ISOCode.UnitOfMeasureISOCode 
    association [0..*] to I_UnitOfMeasureISOCodeText as _ISOCodeText
        on $projection.UnitOfMeasureISOCode = _ISOCodeText.UnitOfMeasureISOCode
{ 
  key UnitOfMeasure,
      UnitOfMeasureSAPCode,
      UnitOfMeasureISOCode,
      IsPrimaryUnitForISOCode,
      UnitOfMeasureNumberOfDecimals,
      UnitOfMeasureIsCommercial,
      UnitOfMeasureDimension,
      SIUnitCnvrsnRateNumerator,
      SIUnitCnvrsnRateDenominator,
      SIUnitCnvrsnRateExponent,
      SIUnitCnvrsnAdditiveValue,
      UnitOfMeasureDspExponent,
      UnitOfMeasureDspNmbrOfDcmls,
      UnitOfMeasureTemperature,
      UnitOfMeasureTemperatureUnit,
      UnitOfMeasurePressure,
      UnitOfMeasurePressureUnit,
      UnitOfMeasure_E
}