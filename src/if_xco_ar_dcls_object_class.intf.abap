INTERFACE if_xco_ar_dcls_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                 TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_access_controls) TYPE REF TO if_xco_access_controls.
ENDINTERFACE.