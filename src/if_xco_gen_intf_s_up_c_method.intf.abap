INTERFACE if_xco_gen_intf_s_up_c_method PUBLIC.
  INTERFACES:
    if_xco_gen_ao_s_up_c_method.

  TYPES:
    BEGIN OF ts_for,
      insert TYPE REF TO if_xco_gen_ao_s_up_methd_insrt,
      delete TYPE REF TO if_xco_gen_ao_s_up_methd_delet,
      update TYPE REF TO if_xco_gen_ao_s_up_methd_updat,
    END OF ts_for.

  ALIASES:
    name FOR if_xco_gen_ao_s_up_c_method~name.

  DATA:
    for TYPE ts_for READ-ONLY.

  METHODS:
    set_default_ignore
      IMPORTING
        iv_default_ignore TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_gen_intf_s_up_c_method,
    set_default_fail
      IMPORTING
        iv_default_fail TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)    TYPE REF TO if_xco_gen_intf_s_up_c_method,
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ao_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_intf_s_up_c_method.
ENDINTERFACE.