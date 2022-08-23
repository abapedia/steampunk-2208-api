CLASS cx_sy_table_creation DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_type_creation
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_table_creation TYPE c LENGTH 32 VALUE '236C5C3FC862AE2EE10000000A114BF5' ##NO_TEXT.
    DATA scnd_key_name TYPE string.
    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !scnd_key_name TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_table_creation IMPLEMENTATION.
ENDCLASS.