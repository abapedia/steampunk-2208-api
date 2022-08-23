INTERFACE if_xco_cp_gen_devc_s_form PUBLIC.
  TYPES:
    tv_short_description TYPE c LENGTH 60.

  DATA:
    properties TYPE REF TO not_released READ-ONLY.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_devc_s_form.
ENDINTERFACE.