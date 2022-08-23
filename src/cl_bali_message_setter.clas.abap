CLASS cl_bali_message_setter DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_bali_item_setter.
    INTERFACES if_bali_message_setter.

    ALIASES category
      FOR if_bali_item_setter~category.
    ALIASES check_passing_item_filter
      FOR if_bali_item_setter~check_passing_item_filter.
    ALIASES get_all_values
      FOR if_bali_message_setter~get_all_values.
    ALIASES set_attributes
      FOR if_bali_message_setter~set_attributes.
    ALIASES set_detail_level
      FOR if_bali_message_setter~set_detail_level.
    ALIASES set_from_bapiret2
      FOR if_bali_message_setter~set_from_bapiret2.
    ALIASES set_from_sy
      FOR if_bali_message_setter~set_from_sy.
    ALIASES ty_category
      FOR if_bali_item_setter~ty_category.
    ALIASES ty_count
      FOR if_bali_message_setter~ty_count.
    ALIASES ty_detail_level
      FOR if_bali_item_setter~ty_detail_level.
    ALIASES ty_filter_passed
      FOR if_bali_item_setter~ty_filter_passed.
    ALIASES ty_id
      FOR if_bali_message_setter~ty_id.
    ALIASES ty_number
      FOR if_bali_message_setter~ty_number.
    ALIASES ty_severity
      FOR if_bali_item_setter~ty_severity.
    ALIASES ty_variable
      FOR if_bali_message_setter~ty_variable.
    METHODS constructor.
    CLASS-METHODS create
      IMPORTING
      !severity TYPE ty_severity DEFAULT if_bali_constants=>c_severity_status
      !id TYPE ty_id
      !number TYPE ty_number
      !variable_1 TYPE ty_variable OPTIONAL
      !variable_2 TYPE ty_variable OPTIONAL
      !variable_3 TYPE ty_variable OPTIONAL
      !variable_4 TYPE ty_variable OPTIONAL
      RETURNING
      VALUE(message) TYPE REF TO if_bali_message_setter.
    CLASS-METHODS create_from_sy
      RETURNING
      VALUE(message) TYPE REF TO if_bali_message_setter.
    CLASS-METHODS create_from_bapiret2
      IMPORTING
      !message_data TYPE bapiret2
      RETURNING
      VALUE(message) TYPE REF TO if_bali_message_setter.
ENDCLASS.

CLASS cl_bali_message_setter IMPLEMENTATION.
ENDCLASS.