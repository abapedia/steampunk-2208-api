@ClientHandling.algorithm: #SESSION_VARIABLE 

@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.sqlViewName: 'ITIMEZONERULE'

@AccessControl.authorizationCheck: #NOT_REQUIRED

@Analytics : {dataCategory: #DIMENSION , dataExtraction.enabled : true}

@EndUserText.label: 'Time Zone Rule'

@Metadata.ignorePropagatedAnnotations:true
@Metadata.allowExtensions:true

@ObjectModel.representativeKey: 'TimeZoneRule'
@ObjectModel.usageType.dataClass: #CUSTOMIZING 
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M

@VDM.viewType: #BASIC 
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API

define view I_TimeZoneRule as select from ttzr
    association [0..*] to I_TimeZoneRuleText as _TimeZoneRuleText
        on $projection.TimeZoneRule = _TimeZoneRuleText.TimeZoneRule
 {
  key TimeZoneRule,
      UTCTimeZoneTimeDiff,
      UTCDifferenceSign,
      TimeZoneRuleIsActive
}