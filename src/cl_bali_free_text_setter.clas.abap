CLASS cl_bali_free_text_setter DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_bali_item_setter.
    INTERFACES if_bali_free_text_setter.

    ALIASES category
      FOR if_bali_item_setter~category.
    ALIASES check_passing_item_filter
      FOR if_bali_item_setter~check_passing_item_filter.
    ALIASES get_all_values
      FOR if_bali_free_text_setter~get_all_values.
    ALIASES set_detail_level
      FOR if_bali_free_text_setter~set_detail_level.
    ALIASES set_text
      FOR if_bali_free_text_setter~set_text.
    ALIASES ty_category
      FOR if_bali_item_setter~ty_category.
    ALIASES ty_detail_level
      FOR if_bali_item_setter~ty_detail_level.
    ALIASES ty_filter_passed
      FOR if_bali_item_setter~ty_filter_passed.
    ALIASES ty_severity
      FOR if_bali_item_setter~ty_severity.
    ALIASES ty_text
      FOR if_bali_free_text_setter~ty_text.
    METHODS constructor.
    CLASS-METHODS create
      IMPORTING
      !severity TYPE ty_severity DEFAULT if_bali_constants=>c_severity_status
      !text TYPE ty_text
      RETURNING
      VALUE(free_text) TYPE REF TO if_bali_free_text_setter.
ENDCLASS.

CLASS cl_bali_free_text_setter IMPLEMENTATION.
ENDCLASS.