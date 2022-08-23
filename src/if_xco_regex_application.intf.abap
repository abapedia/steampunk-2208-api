INTERFACE if_xco_regex_application PUBLIC.
  DATA:
    abap_matcher TYPE REF TO cl_abap_matcher READ-ONLY.

  METHODS:
    matches
      RETURNING
        VALUE(rv_matches) TYPE abap_bool,

    get_match
      RETURNING
        VALUE(rv_match) TYPE string,

    get_submatches
      IMPORTING
        iv_include_match     TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(rt_submatches) TYPE string_table,

    get_submatch
      IMPORTING
        iv_index           TYPE i
      RETURNING
        VALUE(rv_submatch) TYPE string.
ENDINTERFACE.