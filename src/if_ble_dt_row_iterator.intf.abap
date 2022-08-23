INTERFACE if_ble_dt_row_iterator
  PUBLIC.
  METHODS next_row RETURNING VALUE(rv_result) TYPE abap_bool.
  METHODS delete_row RAISING cx_ble_dynamic_table_error.
  METHODS get_value
    IMPORTING iv_column_name  TYPE string
    RETURNING VALUE(rv_value) TYPE string
    RAISING   cx_ble_dynamic_table_error.
  METHODS set_value
    IMPORTING iv_column_name TYPE string
              iv_value       TYPE data
    RAISING   cx_ble_dynamic_table_error
              cx_sy_move_cast_error
              cx_sy_conversion_error.

ENDINTERFACE.