CLASS cl_xco_cts_change DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_cts_change_carrier FINAL METHODS get_change.

    METHODS:
      is_equal_to ABSTRACT
        IMPORTING
          io_change             TYPE REF TO cl_xco_cts_change
        RETURNING
          VALUE(rv_is_equal_to) TYPE abap_bool.

  PROTECTED SECTION.
    METHODS:
      check ABSTRACT
        IMPORTING
          io_cts_wbo_api  TYPE REF TO not_released
        EXPORTING
          es_check_result TYPE not_released
          et_messages     TYPE not_released_ttyp,

      insert ABSTRACT
        IMPORTING
          iv_transport TYPE char20
          io_recording_mechanism TYPE REF TO not_released
          io_tool_set            TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_cts_change IMPLEMENTATION.
ENDCLASS.