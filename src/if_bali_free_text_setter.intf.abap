INTERFACE if_bali_free_text_setter
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

  TYPES:
    ty_text(200) TYPE c.
  METHODS set_text
    IMPORTING
      !severity TYPE ty_severity DEFAULT if_bali_constants=>c_severity_status
      !text TYPE ty_text
    RETURNING
      VALUE(new_free_text) TYPE REF TO if_bali_free_text_setter.
  METHODS set_detail_level
    IMPORTING
      !detail_level TYPE ty_detail_level
    RETURNING
      VALUE(new_free_text) TYPE REF TO if_bali_free_text_setter.
  METHODS get_all_values
    EXPORTING
      !detail_level TYPE ty_detail_level
      !severity TYPE ty_severity
      !text TYPE ty_text.
ENDINTERFACE.