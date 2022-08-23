INTERFACE if_xco_ar_tabl_gtt_obj_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                         TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_global_temporary_tables) TYPE REF TO if_xco_global_temporary_tables.
ENDINTERFACE.