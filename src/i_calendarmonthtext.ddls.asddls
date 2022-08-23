@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'CalendarMonth'
@ObjectModel.usageType.dataClass: #META
@ObjectModel.usageType.serviceQuality: #B
@ObjectModel.usageType.sizeCategory: #L
@AbapCatalog.sqlViewName: 'ICALMONTHTEXT'
@AbapCatalog.preserveKey: true
@EndUserText.label: 'Calendar Month Text'
@Analytics.dataExtraction.enabled: false
@VDM.viewType: #BASIC
@Metadata.ignorePropagatedAnnotations:true

define view I_CalendarMonthText
  as select from dd07t

  association [0..1] to I_CalendarMonth as _CalendarMonth on $projection.CalendarMonth = _CalendarMonth.CalendarMonth

  association [0..1] to I_Language      as _Language      on $projection.Language = _Language.Language

{
  key CalendarMonth,
  key Language,
      CalendarMonthName,
      DomainValue
}