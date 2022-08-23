CLASS cx_icu_other_error DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_icu_other_error TYPE c LENGTH 32 VALUE '0894EF1643A01EEB86B7938D94BC3D34' ##NO_TEXT.
    DATA other_error TYPE cl_icu_transformation=>s_icu_other_error.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !other_error TYPE cl_icu_transformation=>s_icu_other_error OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_icu_other_error IMPLEMENTATION.
ENDCLASS.