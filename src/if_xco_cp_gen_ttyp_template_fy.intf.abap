INTERFACE if_xco_cp_gen_ttyp_template_fy PUBLIC.
  METHODS:
    for_table_type
      IMPORTING
        iv_name            TYPE sxco_ad_object_name
        io_read_state      TYPE REF TO cl_xco_ad_object_read_state
      RETURNING
        VALUE(ro_template) TYPE REF TO if_xco_cp_gen_ttyp_template.
ENDINTERFACE.