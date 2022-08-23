@AbapCatalog.sqlViewName: 'IADDRWORKPLACE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Person Workplace Address Details'
//@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MIXED
//@ObjectModel.representativeKey: 'AddressPersonID'
@VDM: {
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}

define view I_AddressWorkplaceDetails as select from adcp
{
  key AddressID,
  key AddressPersonID,
  key AddressRepresentationCode,
      AddressIsWorkplaceAddress,
      PersonAddressObjectType,
      WorkplaceBuilding,
      WorkplaceFloor,
      WorkplaceRoomNumber,
      WorkplaceFunctionalTitleName,
      WorkplaceDepartmentName,
      WorkplacePrfrdCommMediumType,
      WorkplaceCorrespncShortName,
      WorkplaceInhouseMail
}