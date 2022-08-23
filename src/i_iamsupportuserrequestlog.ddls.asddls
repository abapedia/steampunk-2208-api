@EndUserText.label: 'SAP Support User Request Log'
@Metadata.ignorePropagatedAnnotations: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@ObjectModel.modelingPattern: #NONE
@ObjectModel.usageType: {
  dataClass: #TRANSACTIONAL,
  serviceQuality: #A,
  sizeCategory: #S
}

// The following components of the underlying private view are not exposed in the consumption view:
// RequestedBy: SAP internal technical users for automated system operation
// RequestId: is always empty
// AccessType: SAP internal fixed values used in P_ view to calculate AccessCategory
// IncidentSrc: SAP internal source data used in CL_APS_IAM_SUSR_INC_PARSER to determine IncidentType
// IncidentType: SAP internal classification used in P_ view to calculate AccessCategory
// IncidentSystemType, IncidentSystemNumber, IncidentNumber, IncidentYear: individual components contained in IncidentID

define view entity I_IAMSupportUserRequestLog
  as select from P_IAMSUPPORTUSERLOG as _SupportUserRequestLog
  association [0..1] to I_User as _SupportUser on $projection.CAMSupportUser = _SupportUser.UserID
{
  key CAMSupportUserRequestUUID,
      CAMSuppUserValdtyStartDateTime,
      CAMSupportUser,
      CAMSupportAccessLevel,
      CAMSupportAccessCategory,
      CAMSuppAddedAuthorizationMode,
      CAMSuppAddedAuthorizationUser,
      CAMSupportIncident,
      CAMSuppUserValdtyEndDateTime
}