@ClientHandling.algorithm: #SESSION_VARIABLE

@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.sqlViewName: 'IDSTRULE'

@AccessControl.authorizationCheck: #NOT_REQUIRED

@Analytics : {dataCategory: #DIMENSION , dataExtraction.enabled : true}

@EndUserText.label: 'Daylight Saving Rule'

@Metadata.ignorePropagatedAnnotations:true
@Metadata.allowExtensions:true

@ObjectModel.representativeKey: 'DaylightSavingRule'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M

@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API

define view I_DaylightSavingRule as select from  ttzd 
    association [0..*] to I_DaylightSavingRuleText as _DaylightSavingRuleText
        on $projection.DaylightSavingRule = _DaylightSavingRuleText.DaylightSavingRule
{
  key DaylightSavingRule,
      DaylightSavingTimeDiff,
      DaylightSavingRuleIsActive
}