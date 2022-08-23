CLASS cx_sy_conversion_data_loss DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_conversion_data_loss TYPE c LENGTH 32
 VALUE '2DD2563CF6CBB049E10000000A11447B'.
    DATA value TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(value) TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_data_loss IMPLEMENTATION.
ENDCLASS.