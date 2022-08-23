CLASS cl_bali_log DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_bali_log.

    ALIASES add_abap_behavior_message
      FOR if_bali_log~add_abap_behavior_message.
    ALIASES add_all_items_from_other_log
      FOR if_bali_log~add_all_items_from_other_log.
    ALIASES add_item
      FOR if_bali_log~add_item.
    ALIASES add_messages_from_bapirettab
      FOR if_bali_log~add_messages_from_bapirettab.
    ALIASES cumulate_item
      FOR if_bali_log~cumulate_item.
    ALIASES get_all_items
      FOR if_bali_log~get_all_items.
    ALIASES get_filter_for_add_item
      FOR if_bali_log~get_filter_for_add_item.
    ALIASES get_handle
      FOR if_bali_log~get_handle.
    ALIASES get_header
      FOR if_bali_log~get_header.
    ALIASES get_item
      FOR if_bali_log~get_item.
    ALIASES is_invalidated
      FOR if_bali_log~is_invalidated.
    ALIASES release_memory
      FOR if_bali_log~release_memory.
    ALIASES set_filter_for_add_item
      FOR if_bali_log~set_filter_for_add_item.
    ALIASES set_header
      FOR if_bali_log~set_header.
    ALIASES ty_handle
      FOR if_bali_log~ty_handle.
    ALIASES ty_invalidated
      FOR if_bali_log~ty_invalidated.
    ALIASES ty_item_entry
      FOR if_bali_log~ty_item_entry.
    ALIASES ty_item_table
      FOR if_bali_log~ty_item_table.
    ALIASES ty_log_item_number
      FOR if_bali_log~ty_log_item_number.
    CLASS-METHODS create
      RETURNING
      VALUE(log) TYPE REF TO if_bali_log
      RAISING
      cx_bali_runtime.
    CLASS-METHODS create_with_header
      IMPORTING
      !header TYPE REF TO if_bali_header_setter
      RETURNING
      VALUE(log) TYPE REF TO if_bali_log
      RAISING
      cx_bali_runtime.
    METHODS constructor
      IMPORTING
      !handle TYPE ty_handle OPTIONAL
      !header TYPE REF TO if_bali_header_setter OPTIONAL
      RAISING
      cx_bali_runtime.
ENDCLASS.

CLASS cl_bali_log IMPLEMENTATION.
ENDCLASS.