INTERFACE if_xco_ar_srvd_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                     TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_service_definitions) TYPE REF TO if_xco_service_definitions.
ENDINTERFACE.