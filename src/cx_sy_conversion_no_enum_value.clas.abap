CLASS cx_sy_conversion_no_enum_value DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS wrong_name TYPE c LENGTH 32 VALUE '4635000000311EE4BBB2EE73C422CCE5' ##NO_TEXT.
    CONSTANTS cx_sy_conversion_no_enum_value TYPE c LENGTH 32 VALUE '4635000000311EE4BBB2EE73C4234CE5' ##NO_TEXT.
    DATA value TYPE string.
    DATA type TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !value TYPE string OPTIONAL
      !type TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_no_enum_value IMPLEMENTATION.
ENDCLASS.