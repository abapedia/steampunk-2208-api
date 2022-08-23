INTERFACE if_xco_cp_gen_fugr_s_delete PUBLIC.
  METHODS:
    add_function_module
      IMPORTING
        iv_name TYPE sxco_fm_name,

    remove_function_module
      IMPORTING
        iv_name TYPE sxco_fm_name.
ENDINTERFACE.