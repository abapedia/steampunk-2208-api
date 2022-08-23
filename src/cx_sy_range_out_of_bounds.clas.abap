CLASS cx_sy_range_out_of_bounds DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_data_access_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_range_out_of_bounds TYPE c LENGTH 32
 VALUE '860AB8396F051547E10000000A11447B'.
    DATA offset TYPE i READ-ONLY.
    DATA length TYPE i READ-ONLY.
    DATA size TYPE i READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(offset) TYPE i OPTIONAL
      VALUE(length) TYPE i OPTIONAL
      VALUE(size) TYPE i OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_range_out_of_bounds IMPLEMENTATION.
ENDCLASS.