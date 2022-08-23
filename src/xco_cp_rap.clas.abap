CLASS xco_cp_rap DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS:
      behavior_message
        IMPORTING
          io_behavior_message        TYPE REF TO if_abap_behv_message
        RETURNING
          VALUE(ro_behavior_message) TYPE REF TO if_xco_rap_behavior_message.
ENDCLASS.

CLASS xco_cp_rap IMPLEMENTATION.
ENDCLASS.