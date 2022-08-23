@ClientHandling.algorithm: #SESSION_VARIABLE

@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.sqlViewName: 'ITIMEZONE'

@AccessControl.authorizationCheck: #NOT_REQUIRED

@Analytics : {dataCategory: #DIMENSION , dataExtraction.enabled : true}

@EndUserText.label: 'Time Zone'
@Search.searchable: true
@Metadata.ignorePropagatedAnnotations:true
@Metadata.allowExtensions:true

@ObjectModel.representativeKey: 'TimeZoneID'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M

@VDM.viewType: #BASIC 
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API

define view I_TimeZone as select from ttzz 
    association [0..*] to I_TimeZoneText as _TimeZoneText
        on $projection.TimeZoneID = _TimeZoneText.TimeZoneID
    association [0..1] to I_TimeZoneRule as _TimeZoneRule
        on $projection.TimeZoneRule = _TimeZoneRule.TimeZoneRule
    association [0..1] to I_DaylightSavingRule as _DaylightSavingRule  
        on $projection.DaylightSavingRule = _DaylightSavingRule.DaylightSavingRule      
{
  key TimeZoneID,
      TimeZoneRule,
      DaylightSavingRule,
      TimeZoneIsActive
}