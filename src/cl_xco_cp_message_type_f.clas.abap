CLASS cl_xco_cp_message_type_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      error       TYPE REF TO cl_xco_message_type READ-ONLY,
      warning     TYPE REF TO cl_xco_message_type READ-ONLY,
      information TYPE REF TO cl_xco_message_type READ-ONLY,
      success     TYPE REF TO cl_xco_message_type READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value               TYPE cl_xco_message_type=>tv_value
        RETURNING
          VALUE(ro_message_type) TYPE REF TO cl_xco_message_type.

ENDCLASS.

CLASS cl_xco_cp_message_type_f IMPLEMENTATION.
ENDCLASS.