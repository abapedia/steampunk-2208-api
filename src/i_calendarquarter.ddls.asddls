@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.representativeKey: 'CalendarQuarter'
@ObjectModel.usageType.dataClass: #META
@ObjectModel.usageType.serviceQuality: #B
@ObjectModel.usageType.sizeCategory: #L
@AbapCatalog.sqlViewName: 'ICALENDARQUARTER'
@EndUserText.label: 'Quarter'
@Analytics : {dataCategory: #DIMENSION, dataExtraction.enabled : true}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@Metadata.ignorePropagatedAnnotations:true
@Search.searchable: true

define view I_CalendarQuarter
  as select from dd07l
  association [0..*] to I_CalendarQuarterText as _Text on $projection.CalendarQuarter = _Text.CalendarQuarter
{
  key CalendarQuarter,
      DomainValue
}