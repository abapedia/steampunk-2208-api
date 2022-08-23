CLASS cl_abap_api_state DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_abap_api_state.
    CLASS-METHODS create_instance
      IMPORTING
                api_key       TYPE if_abap_api_state=>ty_s_api_key
      RETURNING
                VALUE(result) TYPE REF TO if_abap_api_state
      RAISING   cx_abap_api_state.

ENDCLASS.

CLASS cl_abap_api_state IMPLEMENTATION.
ENDCLASS.