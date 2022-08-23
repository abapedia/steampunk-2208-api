INTERFACE if_xco_ar_aplo_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                         TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_application_log_objects) TYPE REF TO if_xco_application_log_objects.
ENDINTERFACE.