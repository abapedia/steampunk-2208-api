INTERFACE if_bali_exception_setter
  PUBLIC.

  INTERFACES if_bali_item_setter.

  ALIASES category
    FOR if_bali_item_setter~category.
  ALIASES check_passing_item_filter
    FOR if_bali_item_setter~check_passing_item_filter.
  ALIASES ty_category
    FOR if_bali_item_setter~ty_category.
  ALIASES ty_detail_level
    FOR if_bali_item_setter~ty_detail_level.
  ALIASES ty_filter_passed
    FOR if_bali_item_setter~ty_filter_passed.
  ALIASES ty_severity
    FOR if_bali_item_setter~ty_severity.
  TYPES ty_exception TYPE REF TO cx_root.
  METHODS set_exception
    IMPORTING
      !severity TYPE ty_severity DEFAULT if_bali_constants=>c_severity_status
      !exception TYPE ty_exception
    RETURNING
      VALUE(new_exception_obj) TYPE REF TO if_bali_exception_setter.
  METHODS set_detail_level
    IMPORTING
      !detail_level TYPE ty_detail_level
    RETURNING
      VALUE(new_exception_obj) TYPE REF TO if_bali_exception_setter.
  METHODS get_all_values
    EXPORTING
      !detail_level TYPE ty_detail_level
      !severity TYPE ty_severity
      !exception TYPE ty_exception.
ENDINTERFACE.