INTERFACE if_xco_ar_srvd_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                      TYPE sxco_srvd_object_name
      RETURNING
        VALUE(ro_service_definition) TYPE REF TO if_xco_service_definition.
ENDINTERFACE.