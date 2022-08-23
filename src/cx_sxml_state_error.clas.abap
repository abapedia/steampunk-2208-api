CLASS cx_sxml_state_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sxml_state_error TYPE c LENGTH 32 VALUE 'E9F4004F74D7B84887C5A84D66C8BCD2'. "#EC NOTEXT
    DATA method TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !method TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sxml_state_error IMPLEMENTATION.
ENDCLASS.