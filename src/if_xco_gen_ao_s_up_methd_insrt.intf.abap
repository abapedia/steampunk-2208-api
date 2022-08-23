INTERFACE if_xco_gen_ao_s_up_methd_insrt PUBLIC.
  METHODS:
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

    remove_importing_parameter
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,

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

    remove_exporting_parameter
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,

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

    remove_changing_parameter
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,

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

    remove_returning_parameter
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,

    add_exception
      IMPORTING
        iv_name             TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_exception) TYPE REF TO if_xco_gen_ao_s_fo_s_exception,

    get_exception
      IMPORTING
        iv_name             TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_exception) TYPE REF TO if_xco_gen_ao_s_fo_s_exception,

    remove_exception
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name.
ENDINTERFACE.