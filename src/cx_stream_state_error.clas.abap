CLASS cx_stream_state_error DEFINITION
  PUBLIC
  INHERITING FROM cx_stream_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_stream_state_error IMPLEMENTATION.
ENDCLASS.