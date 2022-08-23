CLASS cx_sy_rtti_syntax_error DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_rtti_no_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_rtti_syntax_error TYPE c LENGTH 32 VALUE '73B6B754005D0E4DE10000000A428164' ##NO_TEXT.
    DATA error_message TYPE string READ-ONLY.
    DATA error_program TYPE syrepid READ-ONLY.
    DATA error_include TYPE syrepid READ-ONLY.
    DATA error_line TYPE int4 READ-ONLY.
    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !error_message TYPE string OPTIONAL
      !error_program TYPE syrepid OPTIONAL
      !error_include TYPE syrepid OPTIONAL
      !error_line TYPE int4 OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_rtti_syntax_error IMPLEMENTATION.
ENDCLASS.