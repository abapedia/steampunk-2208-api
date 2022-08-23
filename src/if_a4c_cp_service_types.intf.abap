INTERFACE if_a4c_cp_service_types
  PUBLIC.

  CONSTANTS:
    "SAP Services start with Prefix SAP_
    sap_cp_destination_service  TYPE if_a4c_cp_service=>ty_service_type VALUE 'SAP_CP_DESTINATION_SERVICE',
    sap_cp_xsuaa                TYPE if_a4c_cp_service=>ty_service_type VALUE 'SAP_CP_XSUAA'.

ENDINTERFACE.