CLASS cx_nr_subobject DEFINITION
  PUBLIC
  INHERITING FROM cx_number_ranges
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_nr_subobject IMPLEMENTATION.
ENDCLASS.