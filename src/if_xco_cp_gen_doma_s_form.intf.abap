INTERFACE if_xco_cp_gen_doma_s_form PUBLIC.
  TYPES:
    tv_short_description TYPE c LENGTH 60.

  DATA:
    output_characteristics TYPE REF TO if_xco_gen_doma_s_fo_outpt_chr READ-ONLY,
    fixed_values           TYPE REF TO if_xco_gen_doma_s_fo_fxd_vals READ-ONLY.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_doma_s_form,

    set_format
      IMPORTING
        io_format    TYPE REF TO if_xco_gen_doma_format
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_doma_s_form.
ENDINTERFACE.