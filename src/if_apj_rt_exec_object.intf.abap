INTERFACE if_apj_rt_exec_object
  PUBLIC.
  TYPES tt_templ_val TYPE if_apj_dt_exec_object=>tt_templ_val.
  METHODS execute
    IMPORTING
      !it_parameters TYPE tt_templ_val
    RAISING
      cx_apj_rt_content.
ENDINTERFACE.