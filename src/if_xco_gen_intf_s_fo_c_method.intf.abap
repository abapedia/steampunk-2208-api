INTERFACE if_xco_gen_intf_s_fo_c_method PUBLIC.
  INTERFACES:
    if_xco_gen_ao_s_fo_c_method.

  ALIASES:
    name FOR if_xco_gen_ao_s_fo_c_method~name,

    set_short_description FOR if_xco_gen_ao_s_fo_c_method~set_short_description,

    add_importing_parameter FOR if_xco_gen_ao_s_fo_c_method~add_importing_parameter,
    get_importing_parameter FOR if_xco_gen_ao_s_fo_c_method~get_importing_parameter,

    add_exporting_parameter FOR if_xco_gen_ao_s_fo_c_method~add_exporting_parameter,
    get_exporting_parameter FOR if_xco_gen_ao_s_fo_c_method~get_exporting_parameter,

    add_changing_parameter FOR if_xco_gen_ao_s_fo_c_method~add_changing_parameter,
    get_changing_parameter FOR if_xco_gen_ao_s_fo_c_method~get_changing_parameter,

    add_returning_parameter FOR if_xco_gen_ao_s_fo_c_method~add_returning_parameter,
    get_returning_parameter FOR if_xco_gen_ao_s_fo_c_method~get_returning_parameter,

    remove_parameter FOR if_xco_gen_ao_s_fo_c_method~remove_parameter,

    add_exception FOR if_xco_gen_ao_s_fo_c_method~add_exception,
    get_exception FOR if_xco_gen_ao_s_fo_c_method~get_exception,
    remove_exception FOR if_xco_gen_ao_s_fo_c_method~remove_exception.

  METHODS:
    set_default_ignore
      IMPORTING
        iv_default_ignore TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_gen_intf_s_fo_c_method,
    set_default_fail
      IMPORTING
        iv_default_fail TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)    TYPE REF TO if_xco_gen_intf_s_fo_c_method.
ENDINTERFACE.