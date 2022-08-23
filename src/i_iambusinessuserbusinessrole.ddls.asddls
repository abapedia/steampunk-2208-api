@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Business User - Business Role assignment'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE]
@VDM.viewType: #COMPOSITE
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ]  }       UserID is not key of I_BusinessUser*/
define view entity I_IAMBusinessUserBusinessRole
  as select from aps_iam_d_bruax   as bru
    inner join   I_IAMBusinessRole as br on br.BusinessRoleUUID = bru.parent_uuid
  association [1..1] to I_BusinessUserBasic as _BusinessUser on _BusinessUser.UserID = $projection.UserID
  association [1..*] to I_IAMBusinessRole   as _BusinessRole on _BusinessRole.BusinessRoleUUID = $projection.BusinessRoleUUID
{
  key UserID,
  key BusinessRoleUUID,
      BusinessRole
}