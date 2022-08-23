@AbapCatalog.sqlViewName: 'IBPUROLE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey
@VDM.viewType: #COMPOSITE
@AccessControl.authorizationCheck: #CHECK
@AccessControl.personalData.blocking: #BLOCKED_DATA_EXCLUDED
@EndUserText.label: 'Business Partner Role (Business User Management)'
@ObjectModel.usageType.serviceQuality: #B
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.representativeKey: 'BusinessPartnerRole'
@Metadata.ignorePropagatedAnnotations:true
@ClientHandling.type: #CLIENT_DEPENDENT
@ClientHandling.algorithm : #SESSION_VARIABLE

define view I_BPUsrRole
  as select from P_BPUsrRole
  association [0..1] to I_BusinessUser      as _BusinessUser      on $projection.BusinessPartner = _BusinessUser.BusinessPartner
  association [0..1] to I_BusinessUserBasic as _BusinessUserBasic on $projection.BusinessPartner = _BusinessUserBasic.BusinessPartner
{
  key BusinessPartner,
  key BusinessPartnerRole,
      BusinessPartnerRoleCategory,
      ValidFrom,
      ValidTo
}