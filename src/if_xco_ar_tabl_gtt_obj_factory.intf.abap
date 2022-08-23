INTERFACE if_xco_ar_tabl_gtt_obj_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                          TYPE sxco_gtt_object_name
      RETURNING
        VALUE(ro_global_temporary_table) TYPE REF TO if_xco_global_temporary_table.
ENDINTERFACE.