CLASS cx_sy_struct_suffix_name DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_struct_creation
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_struct_suffix_name TYPE c LENGTH 32 VALUE '6C98653FCD8B2828E10000000A114BF5' ##NO_TEXT.
    CONSTANTS illegal_char_in_suffix TYPE c LENGTH 32 VALUE '6C555F3F9B513649E10000000A114BF5' ##NO_TEXT.
    CONSTANTS name_too_long_after_include TYPE c LENGTH 32 VALUE '9096653F0A950A29E10000000A114BF5' ##NO_TEXT.
    CONSTANTS duplicate_name_after_include TYPE c LENGTH 32 VALUE '9596653F0A950A29E10000000A114BF5' ##NO_TEXT.
    CONSTANTS reserved_word_after_include TYPE c LENGTH 32 VALUE '6D8A254364895C28E10000000A15483C' ##NO_TEXT.
    DATA suffixed_name TYPE string READ-ONLY.
    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !component_name TYPE string OPTIONAL
      !component_number TYPE i OPTIONAL
      !suffixed_name TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_struct_suffix_name IMPLEMENTATION.
ENDCLASS.