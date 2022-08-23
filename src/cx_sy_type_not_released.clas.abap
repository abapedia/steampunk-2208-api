CLASS cx_sy_type_not_released DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_type_not_released TYPE c LENGTH 32 VALUE '0894EF1643A01EEBA2902D063AE88D8A' ##NO_TEXT.
    DATA absolute_typename TYPE string.
    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !absolute_typename TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_type_not_released IMPLEMENTATION.
ENDCLASS.