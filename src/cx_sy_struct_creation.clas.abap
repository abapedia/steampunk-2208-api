CLASS cx_sy_struct_creation DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_type_creation
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_struct_creation TYPE c LENGTH 32 VALUE '4A6F5C3FBB673E2FE10000000A114BF5' ##NO_TEXT.
    DATA component_name TYPE string READ-ONLY.
    DATA component_number TYPE i READ-ONLY.
    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !component_name TYPE string OPTIONAL
      !component_number TYPE i OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_struct_creation IMPLEMENTATION.
ENDCLASS.