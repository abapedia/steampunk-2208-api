@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Business User Price Category'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE]
@VDM.viewType: #COMPOSITE
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ]  }       UserID is not key of I_BusinessUser*/
define view entity I_IAMBusinessUserPriceCategory
  as select from aps_iam_bu_price_tag_ddl as bu_weight
    inner join   aps_iam_w_usrprc         as price_tag on bu_weight.UserRoleWeight = price_tag.weight
  association [0..*] to I_IAMBusinessUserPriceCatText as _Text                        on  _Text.BusinessUserPriceCategory = $projection.BusinessUserPriceCategory
                                                                                      and _Text.UserID                    = $projection.UserID
  association [1..1] to I_BusinessUserBasic           as _BusinessUser                on  _BusinessUser.UserID = $projection.UserID
  association [1..1] to I_IAMBusinessUserLogonDetails as _IAMBusinessUserLogonDetails on  _IAMBusinessUserLogonDetails.UserID = $projection.UserID
{
  key UserID,
  key BusinessUserPriceCategory
}