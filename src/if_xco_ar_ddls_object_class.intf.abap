INTERFACE if_xco_ar_ddls_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                  TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_data_definitions) TYPE REF TO if_xco_data_definitions.
ENDINTERFACE.