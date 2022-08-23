INTERFACE if_xco_cp_gen_tabl_dbt_tmplt_f PUBLIC.
  METHODS:
    for_database_table
      IMPORTING
        iv_name            TYPE sxco_dbt_object_name
        io_read_state      TYPE REF TO cl_xco_ad_object_read_state
      RETURNING
        VALUE(ro_template) TYPE REF TO if_xco_cp_gen_tabl_dbt_tmplt.
ENDINTERFACE.