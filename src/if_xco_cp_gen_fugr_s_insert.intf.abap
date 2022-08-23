INTERFACE if_xco_cp_gen_fugr_s_insert PUBLIC.
  METHODS:
    add_function_module
      IMPORTING
        iv_name                   TYPE sxco_fm_name
      RETURNING
        VALUE(ro_function_module) TYPE REF TO if_xco_gen_fugr_s_fo_fnctn_mdl,

    get_function_module
      IMPORTING
        iv_name                   TYPE sxco_fm_name
      RETURNING
        VALUE(ro_function_module) TYPE REF TO if_xco_gen_fugr_s_fo_fnctn_mdl,

    remove_function_module
      IMPORTING
        iv_name TYPE sxco_fm_name.
ENDINTERFACE.