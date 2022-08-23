INTERFACE if_xco_gen_fugr_s_fo_fnctn_mdl PUBLIC.
  TYPES:
    tv_short_text TYPE c LENGTH 74.

  DATA:
    name TYPE sxco_fm_name READ-ONLY.

  METHODS:
    set_short_text
      IMPORTING
        iv_short_text TYPE tv_short_text
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_fugr_s_fo_fnctn_mdl,

    add_importing_parameter
      IMPORTING
        iv_name                       TYPE sxco_fm_parameter_name
      RETURNING
        VALUE(ro_importing_parameter) TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_imp,

    get_importing_parameter
      IMPORTING
        iv_name                       TYPE sxco_fm_parameter_name
      RETURNING
        VALUE(ro_importing_parameter) TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_imp,

    remove_importing_parameter
      IMPORTING
        iv_name TYPE sxco_fm_parameter_name,

    add_exporting_parameter
      IMPORTING
        iv_name                       TYPE sxco_fm_parameter_name
      RETURNING
        VALUE(ro_exporting_parameter) TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_exp,

    get_exporting_parameter
      IMPORTING
        iv_name                       TYPE sxco_fm_parameter_name
      RETURNING
        VALUE(ro_exporting_parameter) TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_exp,

    remove_exporting_parameter
      IMPORTING
        iv_name TYPE sxco_fm_parameter_name,

    add_changing_parameter
      IMPORTING
        iv_name                      TYPE sxco_fm_parameter_name
      RETURNING
        VALUE(ro_changing_parameter) TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_cha,

    get_changing_parameter
      IMPORTING
        iv_name                      TYPE sxco_fm_parameter_name
      RETURNING
        VALUE(ro_changing_parameter) TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_cha,

    remove_changing_parameter
      IMPORTING
        iv_name TYPE sxco_fm_parameter_name,

    add_exception
      IMPORTING
        iv_name             TYPE sxco_fm_exception_name
      RETURNING
        VALUE(ro_exception) TYPE REF TO if_xco_gen_fugr_s_fo_fm_excptn,

    get_exception
      IMPORTING
        iv_name             TYPE sxco_fm_exception_name
      RETURNING
        VALUE(ro_exception) TYPE REF TO if_xco_gen_fugr_s_fo_fm_excptn,

    remove_exception
      IMPORTING
        iv_name TYPE sxco_fm_exception_name,

    set_source_code
      IMPORTING
        io_source_code TYPE REF TO if_xco_text
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_fugr_s_fo_fnctn_mdl.
ENDINTERFACE.