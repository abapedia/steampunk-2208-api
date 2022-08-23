INTERFACE if_xco_ar_xslt_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                 TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_transformations) TYPE REF TO if_xco_transformations.
ENDINTERFACE.