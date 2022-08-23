CLASS cx_sy_conversion_no_time DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_conversion_no_time TYPE c LENGTH 32 VALUE '0019990554A91DECB6AE2FF0DC253DE1'. "#EC NOTEXT
    DATA value TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_no_time IMPLEMENTATION.
ENDCLASS.