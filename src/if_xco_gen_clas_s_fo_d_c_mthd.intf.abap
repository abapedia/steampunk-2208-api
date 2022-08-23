INTERFACE if_xco_gen_clas_s_fo_d_c_mthd PUBLIC.
  INTERFACES:
    if_xco_gen_ao_s_fo_c_method.

  ALIASES:
    name FOR if_xco_gen_ao_s_fo_c_method~name,

    set_short_description FOR if_xco_gen_ao_s_fo_c_method~set_short_description,

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

  DATA:
    behavior_implementation TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi READ-ONLY,

    amdp                    TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_amd READ-ONLY.

  METHODS:
    set_abstract
      IMPORTING
        iv_abstract  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_d_c_mthd,

    set_final
      IMPORTING
        iv_final     TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_d_c_mthd,

    set_redefinition
      IMPORTING
        iv_redefinition TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)    TYPE REF TO if_xco_gen_clas_s_fo_d_c_mthd,

    add_importing_parameter
      IMPORTING
        iv_name                       TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_importing_parameter) TYPE REF TO if_xco_gen_clas_s_fo_s_p_imp,

    get_importing_parameter
      IMPORTING
        iv_name                       TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_importing_parameter) TYPE REF TO if_xco_gen_clas_s_fo_s_p_imp.
ENDINTERFACE.