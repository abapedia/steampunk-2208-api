CLASS cl_icu_transformation DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    TYPES icu_transformation_id(255) TYPE c.
    TYPES BEGIN OF s_icu_other_error.
    TYPES   errorcode   TYPE i.
    TYPES   description TYPE string.
    TYPES END OF s_icu_other_error.
    TYPES BEGIN OF s_icu_parse_error.
    TYPES   line TYPE i.
    TYPES   offset TYPE i.
    TYPES   pre_context(16) TYPE c.
    TYPES   post_context(16) TYPE c.
    TYPES END OF s_icu_parse_error.
    CLASS-METHODS create_instance_from_id
      IMPORTING
        !im_id    TYPE cl_icu_transformation=>icu_transformation_id
      EXPORTING
        !ex_trans TYPE REF TO cl_icu_transformation
      RAISING
        cx_icu_parse_error
        cx_icu_other_error.
    CLASS-METHODS create_instance_from_rule
      IMPORTING
        !im_rule  TYPE string
      EXPORTING
        !ex_trans TYPE REF TO cl_icu_transformation
      RAISING
        cx_icu_parse_error
        cx_icu_other_error.
    METHODS transliterate
      IMPORTING
        !im_text                     TYPE csequence
        !im_accept_broken_surrogates TYPE abap_bool DEFAULT abap_false
      EXPORTING
        !ex_text                     TYPE string
      RAISING
        cx_icu_other_error.
ENDCLASS.

CLASS cl_icu_transformation IMPLEMENTATION.
ENDCLASS.