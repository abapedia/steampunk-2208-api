CLASS cx_bali_not_possible DEFINITION
  PUBLIC
  INHERITING FROM cx_bali_runtime
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES ty_error_code TYPE i.
    DATA error_code TYPE ty_error_code.
    CONSTANTS no_authorization TYPE ty_error_code VALUE 1 ##NO_TEXT.
    CONSTANTS object_not_allowed TYPE ty_error_code VALUE 2 ##NO_TEXT.
    CONSTANTS too_many_items TYPE ty_error_code VALUE 3 ##NO_TEXT.
    CONSTANTS entry_is_locked TYPE ty_error_code VALUE 4 ##NO_TEXT.
    CONSTANTS save_not_allowed TYPE ty_error_code VALUE 5 ##NO_TEXT.
    CONSTANTS log_was_invalidated TYPE ty_error_code VALUE 6 ##NO_TEXT.
    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !error_code TYPE ty_error_code OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_bali_not_possible IMPLEMENTATION.
ENDCLASS.