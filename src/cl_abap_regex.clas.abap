CLASS cl_abap_regex DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ENUM newline_mode STRUCTURE c_newline_mode,
          crlfany VALUE IS INITIAL,  " carriage return, linefeed or carriage return followed by linefeed
          cr VALUE 1,                " carriage return
          lf VALUE 2,                " line feed
          crlf VALUE 3,              " carriage return, line feed
          null VALUE 4,              " hex 0
          unicode VALUE 5,           " unicode:  (?>\r\n|\n|\x0b|\f|\r|\x85) LS (line separator, U+2028) and PS (paragraph separator, U+2029)
        END OF ENUM newline_mode STRUCTURE c_newline_mode.
    TYPES:
      BEGIN OF ENUM regex_standard STRUCTURE c_regex_standard BASE TYPE regex_standard,
             posix VALUE IS INITIAL, " based on posix boost 1.31 with SAP flavour
             pcre  VALUE 1,          " based on libpcre2, 10.34 with 16 bit unicode, jit support enabled
             xpath2 VALUE 2,         " based on XPATH2 syntax transformator, matcher is PCRE2
             xsd VALUE 3,            " based on W3C XSD standard, transformed to PCRE2 regex and matched by PCRE2
           END OF ENUM regex_standard STRUCTURE c_regex_standard.
    TYPES:
      BEGIN OF ENUM unicode_handling STRUCTURE c_unicode_handling,
             strict VALUE IS INITIAL, " correctly handle surrogates (utf-16); dump when broken surrogates are encountered
             ignore VALUE 1,          " correctly handle surrogates (utf-16); never match but otherwise ignore broken surrogates
             relaxed VALUE 2,         " treat surrogate pairs as two separate characters (ucs2)
           END OF ENUM unicode_handling STRUCTURE c_unicode_handling.

    DATA pattern TYPE string READ-ONLY.

    CLASS-METHODS create_posix
      IMPORTING
      !pattern TYPE clike
      VALUE(ignore_case) TYPE abap_bool DEFAULT abap_false
      VALUE(simple_regex) TYPE abap_bool DEFAULT abap_false
      VALUE(no_submatches) TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(regex) TYPE REF TO cl_abap_regex
      RAISING
      cx_sy_regex.
    CLASS-METHODS create_pcre
      IMPORTING
      !pattern TYPE clike
      VALUE(ignore_case) TYPE abap_bool DEFAULT abap_false
      VALUE(enable_jit) TYPE abap_bool DEFAULT abap_true
      VALUE(enable_multiline) TYPE abap_bool DEFAULT abap_false
      VALUE(no_submatches) TYPE abap_bool DEFAULT abap_false
      VALUE(newline_mode) TYPE newline_mode DEFAULT c_newline_mode-crlfany
      VALUE(unicode_handling) TYPE unicode_handling DEFAULT c_unicode_handling-strict
      VALUE(extended) TYPE abap_bool DEFAULT abap_true
      VALUE(dot_all) TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(regex) TYPE REF TO cl_abap_regex
      RAISING
      cx_sy_regex
      cx_sy_invalid_regex_operation.
    CLASS-METHODS create_xsd
      IMPORTING
      !pattern TYPE clike
      VALUE(ignore_case) TYPE abap_bool DEFAULT abap_false
      VALUE(enable_jit) TYPE abap_bool DEFAULT abap_true
      VALUE(enable_multiline) TYPE abap_bool DEFAULT abap_false
      VALUE(no_submatches) TYPE abap_bool DEFAULT abap_false
      VALUE(newline_mode) TYPE newline_mode DEFAULT c_newline_mode-crlfany
      VALUE(unicode_handling) TYPE unicode_handling DEFAULT c_unicode_handling-strict
      VALUE(relaxed_escapes) TYPE abap_bool DEFAULT abap_true
      RETURNING
      VALUE(regex) TYPE REF TO cl_abap_regex
      RAISING
      cx_sy_regex
      cx_sy_invalid_regex_operation.
    CLASS-METHODS create_xpath2
      IMPORTING
      !pattern TYPE clike
      VALUE(ignore_case) TYPE abap_bool DEFAULT abap_false
      VALUE(enable_jit) TYPE abap_bool DEFAULT abap_true
      VALUE(enable_multiline) TYPE abap_bool DEFAULT abap_false
      VALUE(no_submatches) TYPE abap_bool DEFAULT abap_false
      VALUE(newline_mode) TYPE newline_mode DEFAULT c_newline_mode-crlfany
      VALUE(unicode_handling) TYPE unicode_handling DEFAULT c_unicode_handling-strict
      VALUE(relaxed_escapes) TYPE abap_bool DEFAULT abap_true
      VALUE(dot_all) TYPE abap_bool DEFAULT abap_false
      VALUE(extended) TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(regex) TYPE REF TO cl_abap_regex
      RAISING
      cx_sy_regex
      cx_sy_invalid_regex_operation.
    METHODS constructor
      IMPORTING
      !pattern TYPE clike
      VALUE(standard) TYPE regex_standard DEFAULT c_regex_standard-posix
      VALUE(ignore_case) TYPE abap_bool DEFAULT abap_false
      VALUE(simple_regex) TYPE abap_bool DEFAULT abap_false
      VALUE(no_submatches) TYPE abap_bool DEFAULT abap_false
      RAISING
      cx_sy_regex.

    METHODS create_matcher
      IMPORTING
      !text TYPE clike OPTIONAL
      !table TYPE STANDARD TABLE OPTIONAL
      !callout TYPE REF TO if_abap_matcher_callout OPTIONAL
      RETURNING
      VALUE(matcher) TYPE REF TO cl_abap_matcher
      RAISING
      cx_sy_matcher.
    METHODS get_regex_standard
      RETURNING
      VALUE(standard) TYPE regex_standard.
  PROTECTED SECTION.
ENDCLASS.

CLASS cl_abap_regex IMPLEMENTATION.
ENDCLASS.