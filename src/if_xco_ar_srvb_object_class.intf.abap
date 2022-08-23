INTERFACE if_xco_ar_srvb_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                  TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_service_bindings) TYPE REF TO if_xco_service_bindings.
ENDINTERFACE.