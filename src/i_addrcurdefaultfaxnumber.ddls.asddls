@AbapCatalog.sqlViewName: 'IADCURDFLTFAX'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Current Default Fax Number'
//@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
//@ObjectModel.representativeKey: 'AddressID'
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MIXED
@VDM: {
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}

define view I_AddrCurDefaultFaxNumber
  as select from I_AddressFaxNumber_2
{
  key AddressID,
  key AddressPersonID,
      CommMediumSequenceNumber,
      FaxNumberCountry,
      FaxAreaCodeSubscriberNumber,
      FaxExtensionNumber,
      InternationalFaxNumber,
      ValidityStartDate,
      ValidityEndDate,
      _FaxNumberCountry
}