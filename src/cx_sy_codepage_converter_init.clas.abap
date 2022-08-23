CLASS cx_sy_codepage_converter_init DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES ty_repl_char TYPE c LENGTH 4.

    CONSTANTS cx_sy_codepage_converter_init TYPE c LENGTH 32 VALUE '005056913E2F1EE890C2427975394D7D' ##NO_TEXT.
    DATA source_codepage TYPE string READ-ONLY.
    DATA target_codepage TYPE string READ-ONLY.
    DATA replacement TYPE ty_repl_char READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !source_codepage TYPE string OPTIONAL
      !target_codepage TYPE string OPTIONAL
      !replacement TYPE ty_repl_char OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_codepage_converter_init IMPLEMENTATION.
ENDCLASS.