INTERFACE if_xco_ar_tabl_str_obj_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source            TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_structures) TYPE REF TO if_xco_ad_structures.
ENDINTERFACE.