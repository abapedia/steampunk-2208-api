CLASS cl_abap_db_x_locator DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_abap_db_blob_handle
      ALL METHODS FINAL.
    INTERFACES if_abap_db_lob_handle
      ALL METHODS FINAL.
    INTERFACES if_abap_close_resource
      ALL METHODS FINAL.

    ALIASES close
      FOR if_abap_close_resource~close.
    ALIASES is_closed
      FOR if_abap_close_resource~is_closed.

    METHODS get_length
      RETURNING
      VALUE(length) TYPE abap_msize
      RAISING
      cx_resource_already_closed
      cx_lob_sql_error.
    METHODS get_bytes
      IMPORTING
      !offset TYPE abap_msize
      !length TYPE abap_msize OPTIONAL
      RETURNING
      VALUE(xstr) TYPE xstring
      RAISING
      cx_lob_sql_error
      cx_parameter_invalid_range
      cx_resource_already_closed
      cx_sy_range_out_of_bounds.
    METHODS find
      IMPORTING
      !start_offset TYPE abap_msize DEFAULT 0
      !pattern TYPE xstring
      RETURNING
      VALUE(match_offset) TYPE abap_msize
      RAISING
      cx_lob_sql_error
      cx_parameter_invalid_range
      cx_resource_already_closed
      cx_sy_range_out_of_bounds.

ENDCLASS.

CLASS cl_abap_db_x_locator IMPLEMENTATION.
ENDCLASS.