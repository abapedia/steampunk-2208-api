@AbapCatalog.sqlViewName: 'IBUPAADDRESS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@AccessControl.personalData.blocking: #BLOCKED_DATA_EXCLUDED
@VDM.viewType: #BASIC
@EndUserText.label: 'Business Partner Address'
@AccessControl.privilegedAssociations:  [ '_Address', '_AddressDefaultRepresentation' ]
@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.supportedCapabilities:[#SQL_DATA_SOURCE, 
                                    #EXTRACTION_DATA_SOURCE,
                                    #ANALYTICAL_DIMENSION,
                                    #CDS_MODELING_ASSOCIATION_TARGET       ]
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.representativeKey:'AddressID'
@Analytics: {
 dataCategory: #DIMENSION,
  dataExtraction: {
    enabled: true,
    delta.changeDataCapture: {
      mapping:[
                {
                    table: 'BUT020', role: #MAIN,
                    viewElement: ['BusinessPartner', 'AddressID'],
                    tableElement: ['partner','addrnumber']
                },
                   {
                    table: 'BUT000', role: #LEFT_OUTER_TO_ONE_JOIN,
                    viewElement: ['BusinessPartner'],
                    tableElement: ['partner']
                }
            ]
    }
  }
}
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions:true

define view I_BusPartAddress
  as select from but020 as BusinessPartnerAddress

  //    inner join   I_Address_2 as _AddressDefaultRepresentation on  _AddressDefaultRepresentation.AddressID                 = BusinessPartnerAddress.addrnumber
  //                                                              and _AddressDefaultRepresentation.AddressPersonID           = BUT000.persnumber
  //                                                              and _AddressDefaultRepresentation.AddressRepresentationCode is initial

  association [1..1] to I_Address            as _Address                      on  $projection.AddressID = _Address.AddressID

  association [1..1] to I_BusinessPartner    as _BusinessPartner              on  $projection.BusinessPartner = _BusinessPartner.BusinessPartner

  association [0..1] to I_BPProtectedAddress as _BPProtectedAddress           on  $projection.BusinessPartner = _BPProtectedAddress.BusinessPartner
                                                                              and $projection.AddressID       = _BPProtectedAddress.AddressID

  association [0..1] to I_Address_2          as _AddressDefaultRepresentation on  $projection.AddressID                                   = _AddressDefaultRepresentation.AddressID
  //                                                                           and $projection.PersonNumber    = _AddressDefaultRepresentation.AddressPersonID
                                                                              and _AddressDefaultRepresentation.AddressRepresentationCode is initial


{
  key BusinessPartner,
  key AddressID,
      AddressUUID,
      ValidityStartDate,
      ValidityEndDate,
      AddressIDByExternalSystem,
      BPTargetAddressID,
      BPAddressMoveDateTime,
      AuthorizationGroup,
      IsBusinessPurposeCompleted
}