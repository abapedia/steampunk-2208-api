
INTERFACE if_abap_reader
  PUBLIC.

  INTERFACES if_abap_close_resource.

  ALIASES close
    FOR if_abap_close_resource~close.
  ALIASES is_closed
    FOR if_abap_close_resource~is_closed.

  METHODS skip
    IMPORTING
      !length TYPE abap_msize
    RAISING
      cx_parameter_invalid_range
      cx_stream_error
      cx_resource_already_closed.
  METHODS set_mark
    RAISING
      cx_stream_position_error
      cx_resource_already_closed.
  METHODS delete_mark
    RAISING
      cx_resource_already_closed.
  METHODS is_mark_supported
    RETURNING
      VALUE(res) TYPE abap_bool.
  METHODS reset_to_mark
    RAISING
      cx_stream_position_error
      cx_resource_already_closed.
  METHODS data_available
    RETURNING
      VALUE(available) TYPE abap_bool
    RAISING
      cx_stream_error
      cx_resource_already_closed.
  METHODS read
    IMPORTING
      !length TYPE abap_msize
    EXPORTING
      !read_data TYPE any
    RAISING
      cx_parameter_invalid_range
      cx_stream_error
      cx_parameter_invalid_type
      cx_resource_already_closed.
  METHODS is_x_reader
    RETURNING
      VALUE(result) TYPE abap_bool
    RAISING
      cx_stream_state_error.
  METHODS reset
    RAISING
      cx_stream_position_error
      cx_resource_already_closed.
  METHODS is_reset_supported
    RETURNING
      VALUE(result) TYPE abap_bool.
ENDINTERFACE.