INTERFACE if_xco_ar_doma_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source         TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_domains) TYPE REF TO if_xco_domains.
ENDINTERFACE.