CLASS cl_xco_aplo_subobj_text_attrbt DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    METHODS:
      create_text FINAL
        IMPORTING
          io_value       TYPE REF TO if_xco_text
        RETURNING
          VALUE(ro_text) TYPE REF TO cl_xco_aplo_subobj_text.

  PROTECTED SECTION.
    METHODS:
      constructor
        IMPORTING
          iv_value TYPE sxco_i18n_text_attribute,

      read ABSTRACT
        IMPORTING
          is_balsubt      TYPE not_released
        RETURNING
          VALUE(ro_value) TYPE REF TO if_xco_text,

      write ABSTRACT
        IMPORTING
          io_value   TYPE REF TO if_xco_text
          is_balsubt TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_aplo_subobj_text_attrbt IMPLEMENTATION.
ENDCLASS.