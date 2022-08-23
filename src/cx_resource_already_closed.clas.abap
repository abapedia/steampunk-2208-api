CLASS cx_resource_already_closed DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_resource_already_closed TYPE c LENGTH 32 VALUE '000F206A92371DECB18030FE4A64F060'. "#EC NOTEXT
    DATA resource TYPE REF TO object.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !resource TYPE REF TO object OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_resource_already_closed IMPLEMENTATION.
ENDCLASS.