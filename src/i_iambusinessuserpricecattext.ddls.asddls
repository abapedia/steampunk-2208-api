@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Business User Price Category Text'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #COMPOSITE
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE]
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity I_IAMBusinessUserPriceCatText
  as select from I_IAMBusinessUserPriceCategory as pc
    inner join   aps_iam_w_usrprt               as pct on pct.usrprc_id = pc.UserID
  association to I_IAMBusinessUserPriceCategory as _BusinessUserPriceCategory on  $projection.BusinessUserPriceCategory = _BusinessUserPriceCategory.BusinessUserPriceCategory
                                                                              and $projection.UserID                    = _BusinessUserPriceCategory.UserID
  association to I_Language                     as _Language                  on  $projection.Language = _Language.Language

{
  key Language,
  key UserID,
  key BusinessUserPriceCategory,
      BusinessUserPriceCategoryName
}