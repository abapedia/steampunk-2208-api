CLASS cx_ai_application_fault DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_ai_application_fault.

    ALIASES tt_fault_reason_type
    FOR if_ai_application_fault~tt_fault_reason_type.
    ALIASES tt_subcode
    FOR if_ai_application_fault~tt_subcode.

    CONSTANTS cx_ai_application_fault TYPE c LENGTH 32 VALUE '65B8FEB5F43CC949B7CD662AB888ED34'. "#EC NOTEXT

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_ai_application_fault IMPLEMENTATION.
ENDCLASS.