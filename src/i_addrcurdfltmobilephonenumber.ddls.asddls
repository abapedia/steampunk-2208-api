@AbapCatalog.sqlViewName: 'IADCURDFLTMBLPH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Current Default Mobile PhoneNumber'
//@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER
//@ObjectModel.representativeKey: 'AddressID'
@VDM: {
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}

define view I_AddrCurDfltMobilePhoneNumber as select from I_AddressPhoneNumber_2
{
  key AddressID,
  key AddressPersonID,
      CommMediumSequenceNumber,
      PhoneNumberCountry,
      PhoneAreaCodeSubscriberNumber,
      InternationalPhoneNumber,
      ValidityStartDate,
      ValidityEndDate,
      _PhoneNumberCountry
}