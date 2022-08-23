INTERFACE if_xco_gen_ao_s_fo_c_method PUBLIC.
  INTERFACES:
    if_xco_gen_ao_s_fo_component.

  ALIASES:
    name FOR if_xco_gen_ao_s_fo_component~name.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ao_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_ao_s_fo_c_method,

    add_importing_parameter
      IMPORTING
        iv_name                       TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_importing_parameter) TYPE REF TO if_xco_gen_ao_s_fo_s_p_imprtng,

    get_importing_parameter
      IMPORTING
        iv_name                       TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_importing_parameter) TYPE REF TO if_xco_gen_ao_s_fo_s_p_imprtng,

    add_exporting_parameter
      IMPORTING
        iv_name                       TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_exporting_parameter) TYPE REF TO if_xco_gen_ao_s_fo_s_p_exprtng,

    get_exporting_parameter
      IMPORTING
        iv_name                       TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_exporting_parameter) TYPE REF TO if_xco_gen_ao_s_fo_s_p_exprtng,

    add_changing_parameter
      IMPORTING
        iv_name                      TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_changing_parameter) TYPE REF TO if_xco_gen_ao_s_fo_s_p_chngng,

    get_changing_parameter
      IMPORTING
        iv_name                      TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_changing_parameter) TYPE REF TO if_xco_gen_ao_s_fo_s_p_chngng,

    add_returning_parameter
      IMPORTING
        iv_name                       TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_returning_parameter) TYPE REF TO if_xco_gen_ao_s_fo_s_p_retrng,

    get_returning_parameter
      IMPORTING
        iv_name                       TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_returning_parameter) TYPE REF TO if_xco_gen_ao_s_fo_s_p_retrng,

    remove_parameter
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,
    add_exception
      IMPORTING
        iv_name             TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_exception) TYPE REF TO if_xco_gen_ao_s_fo_s_exception,

    remove_exception
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,

    get_exception
      IMPORTING
        iv_name             TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_exception) TYPE REF TO if_xco_gen_ao_s_fo_s_exception.
ENDINTERFACE.