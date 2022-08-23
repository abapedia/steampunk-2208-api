INTERFACE if_xco_gen_dtel_s_fo_fld_lbl PUBLIC.
  TYPES:
    tv_text   TYPE c LENGTH 60,
    tv_length TYPE numc2.

  METHODS:
    set_text
      IMPORTING
        iv_text      TYPE tv_text
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_dtel_s_fo_fld_lbl,
    set_length
      IMPORTING
        iv_length    TYPE tv_length
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_dtel_s_fo_fld_lbl.
ENDINTERFACE.