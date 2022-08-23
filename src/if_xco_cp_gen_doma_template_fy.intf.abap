INTERFACE if_xco_cp_gen_doma_template_fy PUBLIC.
  METHODS:
    for_domain
      IMPORTING
        iv_name            TYPE sxco_ad_object_name
        io_read_state      TYPE REF TO cl_xco_ad_object_read_state
      RETURNING
        VALUE(ro_template) TYPE REF TO if_xco_cp_gen_doma_template.
ENDINTERFACE.