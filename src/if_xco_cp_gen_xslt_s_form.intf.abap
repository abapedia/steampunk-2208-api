INTERFACE if_xco_cp_gen_xslt_s_form PUBLIC.
  TYPES:
    ts_source TYPE not_released,
    tt_source TYPE STANDARD TABLE OF ts_source WITH DEFAULT KEY.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ar_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_xslt_s_form,
    set_source
      IMPORTING
        it_source    TYPE tt_source
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_xslt_s_form.
ENDINTERFACE.