INTERFACE if_xco_ar_fugr_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                 TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_function_groups) TYPE REF TO if_xco_function_groups.
ENDINTERFACE.