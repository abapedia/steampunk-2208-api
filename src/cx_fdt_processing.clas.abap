CLASS cx_fdt_processing DEFINITION
  PUBLIC INHERITING FROM cx_dynamic_check CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_fdt_processing TYPE c LENGTH 32 VALUE '001CC412326A02DC92E8D7C705F5DBE2'. "#EC NOTEXT

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !mt_message TYPE if_fdt_types=>t_message OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_fdt_processing IMPLEMENTATION.
ENDCLASS.