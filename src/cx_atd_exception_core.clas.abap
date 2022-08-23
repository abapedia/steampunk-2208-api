CLASS cx_atd_exception_core DEFINITION
  PUBLIC INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    DATA expected TYPE i.
    DATA actual TYPE i.
    DATA method_name TYPE abap_methname.
    DATA expect_times TYPE i.
    DATA parameter_name TYPE abap_parmname.
    DATA interface_name TYPE string.
    DATA event_name TYPE abap_evntname.
    DATA call_name TYPE string.
    DATA object_name TYPE abap_intfname.
    DATA message_prefix  TYPE string.
    DATA message_textid LIKE if_t100_message=>t100key.

    METHODS constructor
      IMPORTING
        !textid         LIKE if_t100_message=>t100key OPTIONAL
        !previous       TYPE REF TO  cx_root OPTIONAL
        !parameter_name TYPE abap_parmname OPTIONAL
        !expected       TYPE i OPTIONAL
        !actual         TYPE i OPTIONAL
        !method_name    TYPE abap_methname OPTIONAL
        !expect_times   TYPE i OPTIONAL
        !interface_name TYPE string OPTIONAL
        !call_name      TYPE string OPTIONAL
        !event_name     TYPE abap_evntname OPTIONAL
        !object_name    TYPE abap_intfname OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_atd_exception_core IMPLEMENTATION.
ENDCLASS.