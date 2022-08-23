CLASS cl_xco_ddef_ent_text_attribute DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    METHODS:
      create_text FINAL
        IMPORTING
          io_value       TYPE REF TO if_xco_text
        RETURNING
          VALUE(ro_text) TYPE REF TO cl_xco_ddef_ent_text.

  PROTECTED SECTION.
    METHODS:
      constructor
        IMPORTING
          iv_value TYPE sxco_i18n_text_attribute,

      read_value ABSTRACT
        IMPORTING
          iv_language         TYPE spras
          io_text_persistence TYPE REF TO not_released
        RETURNING
          VALUE(rv_value)     TYPE string,

      get_languages ABSTRACT
        IMPORTING
          io_text_persistence       TYPE REF TO not_released
        RETURNING
          VALUE(rt_language_values) TYPE not_released_ttyp,

      write_value ABSTRACT
        IMPORTING
          iv_language         TYPE spras
          iv_value            TYPE string
          io_text_persistence TYPE REF TO not_released.

ENDCLASS.

CLASS cl_xco_ddef_ent_text_attribute IMPLEMENTATION.
ENDCLASS.