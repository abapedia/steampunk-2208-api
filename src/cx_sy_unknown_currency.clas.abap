CLASS cx_sy_unknown_currency DEFINITION
  PUBLIC
  INHERITING FROM cx_parameter_invalid
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_unknown_currency TYPE c LENGTH 32 VALUE 'E8ECA2488DBD4046E10000000A421713'. "#EC NOTEXT
    DATA currencycode TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(parameter) TYPE string OPTIONAL
      !currencycode TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_unknown_currency IMPLEMENTATION.
ENDCLASS.