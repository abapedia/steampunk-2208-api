CLASS cx_sy_conversion_lost_decimals DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_conversion_lost_decimals TYPE c LENGTH 32
 VALUE 'FBCD563C38CCB349E10000000A11447B'.
    DATA value TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(value) TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_lost_decimals IMPLEMENTATION.
ENDCLASS.