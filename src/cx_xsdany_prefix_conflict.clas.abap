CLASS cx_xsdany_prefix_conflict DEFINITION
  PUBLIC
  INHERITING FROM cx_xsdany_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_xsdany_prefix_conflict TYPE c LENGTH 32 VALUE '001CC41212C202DC999FD2944EDCCFB6'. "#EC NOTEXT

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_xsdany_prefix_conflict IMPLEMENTATION.
ENDCLASS.