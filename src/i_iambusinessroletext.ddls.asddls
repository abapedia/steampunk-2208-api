@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Business Role Text'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE]
@VDM.viewType: #BASIC
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity I_IAMBusinessRoleText
  as select from aps_iam_d_brt     as brt
    inner join   I_IAMBusinessRole as br on br.BusinessRoleUUID = brt.parent_uuid
  association to parent I_IAMBusinessRole as _BusinessRole on $projection.BusinessRoleUUID = _BusinessRole.BusinessRoleUUID
{
  key BusinessRoleUUID,
  key LanguageCode,
      BusinessRole,
      Name,
      Description
}