CLASS cl_abap_dyn_prg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      ty_col_check TYPE c LENGTH 1.
    TYPES:
      ty_dialect   TYPE c LENGTH 1.
    CONSTANTS col_check_normal TYPE ty_col_check VALUE ' ' ##NO_TEXT.
    CONSTANTS col_check_strict TYPE ty_col_check VALUE 'X' ##NO_TEXT.
    CONSTANTS col_check_cds TYPE ty_col_check VALUE 'C' ##NO_TEXT.
    CONSTANTS dialect_open_sql TYPE ty_dialect VALUE 'O' ##NO_TEXT.
    CONSTANTS dialect_native_sql TYPE ty_dialect VALUE 'N' ##NO_TEXT.
    CLASS-METHODS check_int_value
      IMPORTING
        !val           TYPE csequence
      RETURNING
        VALUE(val_str) TYPE string
      RAISING
        cx_abap_not_an_integer.
    CLASS-METHODS escape_quotes
      IMPORTING
        !val       TYPE csequence
      RETURNING
        VALUE(out) TYPE string.
    CLASS-METHODS escape_quotes_str
      IMPORTING
        !val       TYPE csequence
      RETURNING
        VALUE(out) TYPE string.
    CLASS-METHODS quote
      IMPORTING
        !val       TYPE csequence
      RETURNING
        VALUE(out) TYPE string.
    CLASS-METHODS quote_str
      IMPORTING
        !val       TYPE csequence
      RETURNING
        VALUE(out) TYPE string.
    CLASS-METHODS quote_dbl
      IMPORTING
        !val       TYPE csequence
      RETURNING
        VALUE(out) TYPE string.
    CLASS-METHODS check_column_name
      IMPORTING
        !val           TYPE csequence
        !strict        TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(val_str) TYPE string
      RAISING
        cx_abap_invalid_name.
    CLASS-METHODS check_variable_name
      IMPORTING
        !val           TYPE csequence
        !strict        TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(val_str) TYPE string
      RAISING
        cx_abap_invalid_name.
    CLASS-METHODS check_table_name_str
      IMPORTING
        !val               TYPE csequence
        !packages          TYPE csequence
        !incl_sub_packages TYPE abap_bool DEFAULT abap_false
        !bypass_buffer     TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(val_str)     TYPE string
      RAISING
        cx_abap_not_a_table
        cx_abap_not_in_package.
    CLASS-METHODS check_table_name_tab
      IMPORTING
        !val               TYPE csequence
        !packages          TYPE string_hashed_table
        !incl_sub_packages TYPE abap_bool DEFAULT abap_false
        !bypass_buffer     TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(val_str)     TYPE string
      RAISING
        cx_abap_not_a_table
        cx_abap_not_in_package.
    CLASS-METHODS check_table_or_view_name_str
      IMPORTING
        !val               TYPE csequence
        !packages          TYPE csequence
        !incl_sub_packages TYPE abap_bool DEFAULT abap_false
        !bypass_buffer     TYPE abap_bool DEFAULT abap_false
        !dialect           TYPE ty_dialect DEFAULT dialect_open_sql
      RETURNING
        VALUE(val_str)     TYPE string
      RAISING
        cx_abap_not_a_table
        cx_abap_not_in_package.
    CLASS-METHODS check_whitelist_str
      IMPORTING
        !val           TYPE csequence
        !whitelist     TYPE csequence
      RETURNING
        VALUE(val_str) TYPE string
      RAISING
        cx_abap_not_in_whitelist.
    CLASS-METHODS check_whitelist_tab
      IMPORTING
        !val           TYPE csequence
        !whitelist     TYPE string_hashed_table
      RETURNING
        VALUE(val_str) TYPE string
      RAISING
        cx_abap_not_in_whitelist.
    CLASS-METHODS check_table_or_view_name_tab
      IMPORTING
        !val               TYPE csequence
        !packages          TYPE string_hashed_table
        !incl_sub_packages TYPE abap_bool DEFAULT abap_false
        !bypass_buffer     TYPE abap_bool DEFAULT abap_false
        !dialect           TYPE ty_dialect DEFAULT dialect_open_sql
      RETURNING
        VALUE(val_str)     TYPE string
      RAISING
        cx_abap_not_a_table
        cx_abap_not_in_package.
    CLASS-METHODS escape_xss_xml_html
      IMPORTING
        !val       TYPE csequence
        !above_ff  TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(out) TYPE string.
    CLASS-METHODS escape_xss_javascript
      IMPORTING
        !val       TYPE csequence
        !above_ff  TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(out) TYPE string.
    CLASS-METHODS escape_xss_css
      IMPORTING
        !val       TYPE csequence
        !above_ff  TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(out) TYPE string.
    CLASS-METHODS escape_xss_url
      IMPORTING
        !val       TYPE csequence
      RETURNING
        VALUE(out) TYPE string.
    CLASS-METHODS refresh_buffers.
    CLASS-METHODS check_char_literal
      IMPORTING
        !val           TYPE csequence
      RETURNING
        VALUE(val_str) TYPE string
      RAISING
        cx_abap_invalid_value.
    CLASS-METHODS check_string_literal
      IMPORTING
        !val           TYPE csequence
      RETURNING
        VALUE(val_str) TYPE string
      RAISING
        cx_abap_invalid_value.
    CLASS-METHODS mass_check_whitelist_tab
      IMPORTING
        !values           TYPE string_table
        !whitelist        TYPE string_hashed_table
      RETURNING
        VALUE(values_ret) TYPE string_table
      RAISING
        cx_abap_not_in_whitelist.
    CLASS-METHODS mass_check_whitelist_str
      IMPORTING
        !values           TYPE string_table
        !whitelist        TYPE csequence
      RETURNING
        VALUE(values_ret) TYPE string_table
      RAISING
        cx_abap_not_in_whitelist.
    CLASS-METHODS check_program_name_tab
      IMPORTING
        !val               TYPE csequence
        !packages          TYPE string_hashed_table
        !incl_sub_packages TYPE abap_bool DEFAULT abap_false
        !bypass_buffer     TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(val_str)     TYPE string
      RAISING
        cx_abap_not_a_program
        cx_abap_not_in_package.
    CLASS-METHODS check_program_name_str
      IMPORTING
        !val               TYPE csequence
        !packages          TYPE csequence
        !incl_sub_packages TYPE abap_bool DEFAULT abap_false
        !bypass_buffer     TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(val_str)     TYPE string
      RAISING
        cx_abap_not_a_program
        cx_abap_not_in_package.
ENDCLASS.

CLASS cl_abap_dyn_prg IMPLEMENTATION.
ENDCLASS.