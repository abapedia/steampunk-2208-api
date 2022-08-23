@AbapCatalog.viewEnhancementCategory:[#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Business Role'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE]
@VDM.viewType: #BASIC
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MASTER
}
define root view entity I_IAMBusinessRole
  as select from aps_iam_d_br as br
  composition [0..*] of I_IAMBusinessRoleText         as _Text
  association [0..*] to I_IAMBusinessUserBusinessRole as _User on _User.BusinessRoleUUID = $projection.BusinessRoleUUID
{
  key BusinessRoleUUID,
      BusinessRole,
      BusinessRoleTemplate,
      CreatedByUser,
      CreationDateTime,
      LastChangedByUser,
      LastChangeDateTime,
      _Text
}