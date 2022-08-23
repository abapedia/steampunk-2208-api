INTERFACE if_xco_ar_object_class PUBLIC.
  METHODS:
    in
      IMPORTING
        io_source         TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_objects) TYPE REF TO if_xco_ar_objects.
ENDINTERFACE.