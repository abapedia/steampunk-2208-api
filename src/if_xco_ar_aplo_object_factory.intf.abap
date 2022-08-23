INTERFACE if_xco_ar_aplo_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                          TYPE sxco_aplo_object_name
      RETURNING
        VALUE(ro_application_log_object) TYPE REF TO if_xco_application_log_object.
ENDINTERFACE.