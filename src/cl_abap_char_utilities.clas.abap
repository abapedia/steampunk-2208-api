CLASS cl_abap_char_utilities DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
      ty_number_format TYPE n LENGTH 4.
    CONSTANTS byte_order_mark_little TYPE abap_byte_order_mark VALUE 'FFFE' ##NO_TEXT.
    CONSTANTS byte_order_mark_big TYPE abap_byte_order_mark VALUE 'FEFF' ##NO_TEXT.
    CONSTANTS byte_order_mark_utf8 TYPE abap_byte_order_utf8 VALUE 'EFBBBF' ##NO_TEXT.
    CONSTANTS charsize TYPE i VALUE %_charsize ##NO_TEXT.
    CONSTANTS endian TYPE abap_endian VALUE %_endian ##NO_TEXT.
    CONSTANTS minchar TYPE abap_char1 VALUE %_minchar ##NO_TEXT.
    CONSTANTS maxchar TYPE abap_char1 VALUE %_maxchar ##NO_TEXT.
    CONSTANTS horizontal_tab TYPE abap_char1 VALUE %_horizontal_tab ##NO_TEXT.
    CONSTANTS vertical_tab TYPE abap_char1 VALUE %_vertical_tab ##NO_TEXT.
    CONSTANTS newline TYPE abap_char1 VALUE %_newline ##NO_TEXT.
    CONSTANTS cr_lf TYPE abap_cr_lf VALUE %_cr_lf ##NO_TEXT.
    CONSTANTS form_feed TYPE abap_char1 VALUE %_formfeed ##NO_TEXT.
    CONSTANTS backspace TYPE abap_char1 VALUE %_backspace ##NO_TEXT.
    CLASS-METHODS endian_to_number_format
      IMPORTING
      !endian TYPE abap_endian
      RETURNING
      VALUE(number_format) TYPE ty_number_format.
    CLASS-METHODS number_format_to_endian
      IMPORTING
      !number_format TYPE ty_number_format
      RETURNING
      VALUE(endian) TYPE abap_endian.
    CLASS-METHODS get_simple_spaces_for_cur_cp
      RETURNING
      VALUE(s_str) TYPE string.
ENDCLASS.

CLASS cl_abap_char_utilities IMPLEMENTATION.
ENDCLASS.