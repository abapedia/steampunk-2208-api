CLASS cl_abap_matcher DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.

    DATA regex TYPE REF TO cl_abap_regex READ-ONLY.
    DATA table TYPE string_table READ-ONLY.
    DATA TEXT TYPE string READ-ONLY.

    CLASS-METHODS contains_posix
      IMPORTING
      !pattern TYPE clike
      !text TYPE clike OPTIONAL
      !table TYPE STANDARD TABLE OPTIONAL
      VALUE(ignore_case) TYPE abap_bool DEFAULT abap_false
      VALUE(simple_regex) TYPE abap_bool DEFAULT abap_false
      VALUE(no_submatches) TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(success) TYPE abap_bool
      RAISING
      cx_sy_matcher
      cx_sy_regex.
    CLASS-METHODS contains
      IMPORTING
      !pattern TYPE clike
      !text TYPE clike OPTIONAL
      !table TYPE STANDARD TABLE OPTIONAL
      VALUE(ignore_case) TYPE abap_bool DEFAULT abap_false
      VALUE(simple_regex) TYPE abap_bool DEFAULT abap_false
      VALUE(no_submatches) TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(success) TYPE abap_bool
      RAISING
      cx_sy_matcher
      cx_sy_regex.
    CLASS-METHODS create_xsd
      IMPORTING
      !pattern TYPE clike
      !text TYPE clike OPTIONAL
      !table TYPE STANDARD TABLE OPTIONAL
      !ignore_case TYPE abap_bool DEFAULT abap_false
      !enable_jit TYPE abap_bool DEFAULT abap_true
      !enable_multiline TYPE abap_bool DEFAULT abap_false
      !no_submatches TYPE abap_bool DEFAULT abap_false
      !newline_mode TYPE cl_abap_regex=>newline_mode DEFAULT cl_abap_regex=>c_newline_mode-crlfany
      !unicode_handling TYPE cl_abap_regex=>unicode_handling DEFAULT cl_abap_regex=>c_unicode_handling-strict
      !relaxed_escapes TYPE abap_bool DEFAULT abap_true
      RETURNING
      VALUE(matcher) TYPE REF TO cl_abap_matcher
      RAISING
      cx_sy_regex
      cx_sy_matcher.
    CLASS-METHODS create_xpath2
      IMPORTING
      !pattern TYPE clike
      !text TYPE clike OPTIONAL
      !table TYPE STANDARD TABLE OPTIONAL
      !ignore_case TYPE abap_bool DEFAULT abap_false
      !enable_jit TYPE abap_bool DEFAULT abap_true
      !enable_multiline TYPE abap_bool DEFAULT abap_false
      !no_submatches TYPE abap_bool DEFAULT abap_false
      !newline_mode TYPE cl_abap_regex=>newline_mode DEFAULT cl_abap_regex=>c_newline_mode-crlfany
      !unicode_handling TYPE cl_abap_regex=>unicode_handling DEFAULT cl_abap_regex=>c_unicode_handling-strict
      !relaxed_escapes TYPE abap_bool DEFAULT abap_true
      RETURNING
      VALUE(matcher) TYPE REF TO cl_abap_matcher
      RAISING
      cx_sy_regex
      cx_sy_matcher.
    CLASS-METHODS create_pcre
      IMPORTING
      !pattern TYPE clike
      !text TYPE clike OPTIONAL
      !table TYPE STANDARD TABLE OPTIONAL
      !ignore_case TYPE abap_bool DEFAULT abap_false
      !enable_jit TYPE abap_bool DEFAULT abap_true
      !enable_multiline TYPE abap_bool DEFAULT abap_false
      !no_submatches TYPE abap_bool DEFAULT abap_false
      !newline_mode TYPE cl_abap_regex=>newline_mode DEFAULT cl_abap_regex=>c_newline_mode-crlfany
      !unicode_handling TYPE cl_abap_regex=>unicode_handling DEFAULT cl_abap_regex=>c_unicode_handling-strict
      !extended TYPE abap_bool DEFAULT abap_true
      RETURNING
      VALUE(matcher) TYPE REF TO cl_abap_matcher
      RAISING
      cx_sy_regex
      cx_sy_matcher.
    CLASS-METHODS create_posix
      IMPORTING
      !pattern TYPE clike
      !text TYPE clike OPTIONAL
      !table TYPE STANDARD TABLE OPTIONAL
      !ignore_case TYPE abap_bool DEFAULT abap_false
      !simple_regex TYPE abap_bool DEFAULT abap_false
      !no_submatches TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(matcher) TYPE REF TO cl_abap_matcher
      RAISING
      cx_sy_regex
      cx_sy_matcher.
    CLASS-METHODS create
      IMPORTING
      !pattern TYPE clike
      !text TYPE clike OPTIONAL
      !table TYPE STANDARD TABLE OPTIONAL
      !ignore_case TYPE abap_bool DEFAULT abap_false
      !simple_regex TYPE abap_bool DEFAULT abap_false
      !no_submatches TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(matcher) TYPE REF TO cl_abap_matcher
      RAISING
      cx_sy_regex
      cx_sy_matcher.
    CLASS-METHODS get_object
      RETURNING
      VALUE(matcher) TYPE REF TO cl_abap_matcher.
    CLASS-METHODS matches_posix
      IMPORTING
      !pattern TYPE clike
      !text TYPE clike
      VALUE(ignore_case) TYPE abap_bool DEFAULT abap_false
      VALUE(simple_regex) TYPE abap_bool DEFAULT abap_false
      VALUE(no_submatches) TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(success) TYPE abap_bool
      RAISING
      cx_sy_regex.
    CLASS-METHODS matches
      IMPORTING
      !pattern TYPE clike
      !text TYPE clike
      VALUE(ignore_case) TYPE abap_bool DEFAULT abap_false
      VALUE(simple_regex) TYPE abap_bool DEFAULT abap_false
      VALUE(no_submatches) TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(success) TYPE abap_bool
      RAISING
      cx_sy_regex.
    METHODS constructor
      IMPORTING
      !regex TYPE REF TO cl_abap_regex
      !text TYPE clike OPTIONAL
      !table TYPE STANDARD TABLE OPTIONAL
      RAISING
      cx_sy_matcher.

    METHODS find_all
      RETURNING
      VALUE(matches) TYPE match_result_tab
      RAISING
      cx_sy_matcher.
    METHODS find_next
      RETURNING
      VALUE(success) TYPE abap_bool
      RAISING
      cx_sy_matcher.
    METHODS get_length
      IMPORTING
      VALUE(index) TYPE i DEFAULT 0
      RETURNING
      VALUE(length) TYPE i
      RAISING
      cx_sy_matcher.
    METHODS get_line
      RETURNING
      VALUE(line) TYPE i
      RAISING
      cx_sy_matcher.
    METHODS get_match
      RETURNING
      VALUE(match) TYPE match_result
      RAISING
      cx_sy_matcher.
    METHODS get_offset
      IMPORTING
      VALUE(index) TYPE i DEFAULT 0
      RETURNING
      VALUE(offset) TYPE i
      RAISING
      cx_sy_matcher.
    METHODS get_submatch
      IMPORTING
      VALUE(index) TYPE i
      RETURNING
      VALUE(submatch) TYPE string
      RAISING
      cx_sy_matcher.
    METHODS get_mark
      RETURNING
      VALUE(mark) TYPE string
      RAISING
      cx_sy_matcher.
    METHODS match
      RETURNING
      VALUE(success) TYPE abap_bool
      RAISING
      cx_sy_matcher.
    METHODS replace_all
      IMPORTING
      !newtext TYPE clike
      RETURNING
      VALUE(count) TYPE int4
      RAISING
      cx_sy_matcher.
    METHODS replace_found
      IMPORTING
      !newtext TYPE clike
      RETURNING
      VALUE(success) TYPE abap_bool
      RAISING
      cx_sy_matcher.
    METHODS replace_next
      IMPORTING
      !newtext TYPE clike
      RETURNING
      VALUE(success) TYPE abap_bool
      RAISING
      cx_sy_matcher.
    METHODS set_callout
      IMPORTING
      !callout TYPE REF TO if_abap_matcher_callout
      RAISING
      cx_sy_matcher.
  PROTECTED SECTION.
ENDCLASS.

CLASS cl_abap_matcher IMPLEMENTATION.
ENDCLASS.