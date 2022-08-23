INTERFACE if_xco_cp_gen_fugr_s_form PUBLIC.
  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ar_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_fugr_s_form.
ENDINTERFACE.