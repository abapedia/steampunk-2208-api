INTERFACE if_xco_gen_bdef_s_fo_sclr_enty PUBLIC.
  METHODS:
    set_field
      IMPORTING
        iv_field_name TYPE sxco_cds_field_name
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_bdef_s_fo_sclr_enty.
ENDINTERFACE.