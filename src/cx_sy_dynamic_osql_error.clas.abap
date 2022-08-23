CLASS cx_sy_dynamic_osql_error DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_open_sql_error
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_dynamic_osql_error TYPE c LENGTH 32 VALUE '834B8E69FDDBD411B30C000102A3F65B'. "#EC NOTEXT
    DATA token TYPE string.
    DATA row TYPE i.
    DATA column TYPE i.
    DATA clause TYPE i.
    DATA subquery TYPE i.
    CONSTANTS select_list TYPE i VALUE 1. "#EC NOTEXT
    CONSTANTS from_clause TYPE i VALUE 2. "#EC NOTEXT
    CONSTANTS where_clause TYPE i VALUE 3. "#EC NOTEXT
    CONSTANTS groupby_clause TYPE i VALUE 4. "#EC NOTEXT
    CONSTANTS having_clause TYPE i VALUE 5. "#EC NOTEXT
    CONSTANTS orderby_clause TYPE i VALUE 6. "#EC NOTEXT
    CONSTANTS set_clause TYPE i VALUE 7. "#EC NOTEXT
    DATA msgtext TYPE string.
    DATA keyword TYPE string.
    DATA msgnumber TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !sqlcode TYPE i OPTIONAL
      !sqlmsg TYPE string OPTIONAL
      !token TYPE string OPTIONAL
      !row TYPE i OPTIONAL
      !column TYPE i OPTIONAL
      !clause TYPE i OPTIONAL
      !subquery TYPE i OPTIONAL
      !msgtext TYPE string OPTIONAL
      !keyword TYPE string OPTIONAL
      !msgnumber TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_dynamic_osql_error IMPLEMENTATION.
ENDCLASS.