INTERFACE if_xco_tt_primary_key_factory PUBLIC.
  TYPES:
    tv_key_component  TYPE c LENGTH 132,
    tt_key_components TYPE STANDARD TABLE OF tv_key_component WITH DEFAULT KEY.

  METHODS:
    standard_key
      IMPORTING
        io_key_category       TYPE REF TO cl_xco_tt_key_category
      RETURNING
        VALUE(ro_primary_key) TYPE REF TO if_xco_tt_primary_key,

    row_type
      IMPORTING
        io_key_category       TYPE REF TO cl_xco_tt_key_category
      RETURNING
        VALUE(ro_primary_key) TYPE REF TO if_xco_tt_primary_key,

    key_components
      IMPORTING
        io_key_category       TYPE REF TO cl_xco_tt_key_category
        it_key_components     TYPE tt_key_components
      RETURNING
        VALUE(ro_primary_key) TYPE REF TO if_xco_tt_primary_key,

    not_specified
      IMPORTING
        io_key_category       TYPE REF TO cl_xco_tt_key_category
      RETURNING
        VALUE(ro_primary_key) TYPE REF TO if_xco_tt_primary_key.
ENDINTERFACE.