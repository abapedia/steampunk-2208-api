CLASS cx_sy_conversion_unknown_langu DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_conversion_unknown_langu TYPE c LENGTH 32 VALUE '974C0600764DCA4892D96FC1A4D71D2C' ##NO_TEXT.
    DATA value TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_unknown_langu IMPLEMENTATION.
ENDCLASS.