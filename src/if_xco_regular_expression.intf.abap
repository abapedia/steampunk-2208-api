INTERFACE if_xco_regular_expression PUBLIC.

  DATA:
    abap_regex TYPE REF TO cl_abap_regex READ-ONLY.

  METHODS:
    matches
      IMPORTING
        iv_text           TYPE clike
      RETURNING
        VALUE(rv_matches) TYPE abap_bool,

    apply_to_text
      IMPORTING
        iv_text               TYPE clike
      RETURNING
        VALUE(ro_application) TYPE REF TO if_xco_regex_application,

    apply_to_table
      IMPORTING
        it_table              TYPE STANDARD TABLE
      RETURNING
        VALUE(ro_application) TYPE REF TO if_xco_regex_application.
ENDINTERFACE.