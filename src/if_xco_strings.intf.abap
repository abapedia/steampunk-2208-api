INTERFACE if_xco_strings PUBLIC.
  INTERFACES:
    if_xco_news,

    if_xco_text,

    if_xco_string_iterable.

  TYPES:
    tv_index   TYPE int4,

    tt_indices TYPE STANDARD TABLE OF tv_index WITH EMPTY KEY.

  DATA:
    value TYPE string_table READ-ONLY.

  METHODS:
    get
      IMPORTING
        iv_position      TYPE i
      RETURNING
        VALUE(ro_string) TYPE REF TO if_xco_string,

    from
      IMPORTING
        iv_position       TYPE i
      RETURNING
        VALUE(ro_strings) TYPE REF TO if_xco_strings,

    to
      IMPORTING
        iv_position       TYPE i
      RETURNING
        VALUE(ro_strings) TYPE REF TO if_xco_strings,

    reorder
      IMPORTING
        it_indices        TYPE tt_indices
      RETURNING
        VALUE(ro_strings) TYPE REF TO if_xco_strings,

    reverse
      RETURNING
        VALUE(ro_strings) TYPE REF TO if_xco_strings,

    join
      IMPORTING
        iv_delimiter     TYPE string DEFAULT ''
      RETURNING
        VALUE(ro_string) TYPE REF TO if_xco_string,

    compose
      IMPORTING
        io_composition   TYPE REF TO if_xco_string_composition
      RETURNING
        VALUE(ro_string) TYPE REF TO if_xco_string.
ENDINTERFACE.