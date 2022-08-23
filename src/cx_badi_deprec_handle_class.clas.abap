CLASS cx_badi_deprec_handle_class DEFINITION
  PUBLIC
  INHERITING FROM cx_badi
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_badi_deprec_handle_class TYPE c LENGTH 32 VALUE '001560AA0E081DDB9C98594C19E085F4'. "#EC NOTEXT
    DATA badi_name TYPE badi_name READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !badi_name TYPE badi_name OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_badi_deprec_handle_class IMPLEMENTATION.
ENDCLASS.