INTERFACE if_xco_ar_tabl_api_object PUBLIC.
  DATA:
    structure              TYPE REF TO if_xco_ar_tabl_str_obj_factory READ-ONLY,
    append_structure       TYPE REF TO if_xco_ar_tabl_aps_obj_factory READ-ONLY,
    database_table         TYPE REF TO if_xco_ar_tabl_dbt_obj_factory READ-ONLY,
    global_temporary_table TYPE REF TO if_xco_ar_tabl_gtt_obj_factory READ-ONLY.

  METHODS:
    for
      IMPORTING
        iv_name         TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_table) TYPE REF TO if_xco_ad_table.
ENDINTERFACE.