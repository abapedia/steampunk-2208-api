@AbapCatalog.sqlViewName: 'IEMPWPADDR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey
@AccessControl.authorizationCheck: #CHECK
@AccessControl.personalData.blocking: #REQUIRED
@Analytics : {dataCategory: #DIMENSION, dataExtraction.enabled : true}
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Employee Workplace Address'
@VDM.viewType: #BASIC
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.usageType.serviceQuality: #B
@ObjectModel.usageType.sizeCategory: #XXL

define view I_WorkplaceAddress

  as select from mom052 as Mom

    inner join   but000 as bp   on bp.partner_guid = Mom.partner_guid
    inner join   adcp   as root on root.addrnumber = Mom.org_addr_number
                               and root.persnumber = bp.persnumber
    
  association [0..1] to adr6 as _mail  on  root.addrnumber = _mail.addrnumber
                                       and root.persnumber = _mail.persnumber
                                       
  association [0..1] to adr2 as _phone on  root.addrnumber = _phone.addrnumber
                                       and root.persnumber = _phone.persnumber
                                       
  association [0..1] to adr3 as _CurrentDefaultFaxNumber   on  root.addrnumber = _CurrentDefaultFaxNumber.addrnumber
                                                           and root.persnumber = _CurrentDefaultFaxNumber.persnumber
                                                           and _CurrentDefaultFaxNumber.flgdefault = 'X'                                     
                                       
  association [0..1] to I_Country as _DestinationLocationCountry on $projection.DestinationLocationCountry = _DestinationLocationCountry.Country
  
  association [0..1] to I_Country as _MblPhoneDestinationLocCountry on $projection.MblPhoneDestinationLocCountry = _MblPhoneDestinationLocCountry.Country
  
  association [0..1] to I_Country as _FaxNumberCountry on $projection.FaxNumberCountry = _FaxNumberCountry.Country
  
{
  key BusinessPartnerUUID,
      AddressID,
      DestinationLocationCountry,
      PhoneNumber,
      PhoneNumberExtension,
      NormalizedPhoneNumber,
      MblPhoneDestinationLocCountry,
      MobilePhoneNumber,
      MblNormalizedPhoneNumber,
      FaxNumberCountry,
      FaxAreaCodeSubscriberNumber,
      FaxExtensionNumber,
      InternationalFaxNumber,
      DefaultEmailAddress,
      ValidityStartDate,
      ValidityEndDate,
      Building,
      RoomNumber,
      Floor,
      FunctionalTitlename,
      Department,
      CommunicationMediumType,
      IsBusinessPurposeCompleted,
      AuthorizationGroup
}