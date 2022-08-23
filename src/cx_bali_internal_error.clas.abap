CLASS cx_bali_internal_error DEFINITION
  PUBLIC
  INHERITING FROM cx_bali_runtime
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_bali_internal_error IMPLEMENTATION.
ENDCLASS.