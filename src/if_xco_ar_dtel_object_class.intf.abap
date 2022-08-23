INTERFACE if_xco_ar_dtel_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source               TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_data_elements) TYPE REF TO if_xco_ad_data_elements.
ENDINTERFACE.