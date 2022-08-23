CLASS cx_sy_rtti_type_not_released DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_rtti_no_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_rtti_type_not_released TYPE c LENGTH 32 VALUE '005056AA0E031ED9949035BE8F770141' ##NO_TEXT.
    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_rtti_type_not_released IMPLEMENTATION.
ENDCLASS.