INTERFACE if_xco_gen_fugr_s_up_fnctn_mdl PUBLIC.
  DATA:
    name TYPE sxco_fm_name READ-ONLY.

  METHODS:
    set_source_code
      IMPORTING
        io_source_code TYPE REF TO if_xco_text
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_fugr_s_up_fnctn_mdl.
ENDINTERFACE.