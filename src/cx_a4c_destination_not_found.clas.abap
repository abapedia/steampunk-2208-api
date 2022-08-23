CLASS cx_a4c_destination_not_found DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_a4c_destination_not_found TYPE c LENGTH 32 VALUE '005056AADC561EDA97DA9434898C48CF' ##NO_TEXT.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_a4c_destination_not_found IMPLEMENTATION.
ENDCLASS.