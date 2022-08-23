CLASS cx_sy_tab_range_out_of_bounds DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_data_access_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_tab_range_out_of_bounds TYPE c LENGTH 32 VALUE '6CC805402348C551E10000000A114BF5'. "#EC NOTEXT
    DATA from TYPE i READ-ONLY.
    DATA from_offset TYPE i READ-ONLY.
    DATA to TYPE i READ-ONLY.
    DATA to_offset TYPE i.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !from TYPE i OPTIONAL
      !from_offset TYPE i OPTIONAL
      !to TYPE i OPTIONAL
      !to_offset TYPE i OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_tab_range_out_of_bounds IMPLEMENTATION.
ENDCLASS.