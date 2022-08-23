CLASS cl_bali_exception_setter DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_bali_exception_setter.
    INTERFACES if_bali_item_setter.

    ALIASES category
      FOR if_bali_item_setter~category.
    ALIASES check_passing_item_filter
      FOR if_bali_item_setter~check_passing_item_filter.
    ALIASES get_all_values
      FOR if_bali_exception_setter~get_all_values.
    ALIASES set_detail_level
      FOR if_bali_exception_setter~set_detail_level.
    ALIASES set_exception
      FOR if_bali_exception_setter~set_exception.
    ALIASES ty_category
      FOR if_bali_item_setter~ty_category.
    ALIASES ty_detail_level
      FOR if_bali_item_setter~ty_detail_level.
    ALIASES ty_exception
      FOR if_bali_exception_setter~ty_exception.
    ALIASES ty_filter_passed
      FOR if_bali_item_setter~ty_filter_passed.
    ALIASES ty_severity
      FOR if_bali_item_setter~ty_severity.
    METHODS constructor.
    CLASS-METHODS create
      IMPORTING
      !severity TYPE ty_severity DEFAULT if_bali_constants=>c_severity_status
      !exception TYPE ty_exception
      RETURNING
      VALUE(exception_obj) TYPE REF TO if_bali_exception_setter.
ENDCLASS.

CLASS cl_bali_exception_setter IMPLEMENTATION.
ENDCLASS.