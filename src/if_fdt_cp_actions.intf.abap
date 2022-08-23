INTERFACE if_fdt_cp_actions
  PUBLIC.

  METHODS load
    EXPORTING
      VALUE(ev_success) TYPE abap_bool
    RAISING
      cx_fdt_cp_utility_exceptions.
  METHODS create
    EXPORTING
      VALUE(ev_success) TYPE abap_bool
    RAISING
      cx_fdt_cp_utility_exceptions.
  METHODS update
    EXPORTING
      VALUE(ev_success) TYPE abap_bool
    RAISING
      cx_fdt_cp_utility_exceptions.
  METHODS delete
    EXPORTING
      VALUE(ev_success) TYPE abap_bool
    RAISING
      cx_fdt_cp_utility_exceptions.
ENDINTERFACE.