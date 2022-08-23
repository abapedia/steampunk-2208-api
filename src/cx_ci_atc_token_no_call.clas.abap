CLASS cx_ci_atc_token_no_call DEFINITION
  PUBLIC INHERITING FROM cx_dynamic_check
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_ci_atc_token_no_call IMPLEMENTATION.
ENDCLASS.