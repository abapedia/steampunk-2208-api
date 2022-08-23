CLASS cx_icu_parse_error DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    DATA parse_error TYPE cl_icu_transformation=>s_icu_parse_error.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !parse_error TYPE cl_icu_transformation=>s_icu_parse_error OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_icu_parse_error IMPLEMENTATION.
ENDCLASS.