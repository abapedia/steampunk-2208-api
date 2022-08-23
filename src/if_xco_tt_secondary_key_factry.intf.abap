INTERFACE if_xco_tt_secondary_key_factry PUBLIC.
  TYPES:
    tv_name           TYPE c LENGTH 30,

    tv_key_component  TYPE c LENGTH 132,
    tt_key_components TYPE STANDARD TABLE OF tv_key_component WITH DEFAULT KEY.

  METHODS:
    key_components
      IMPORTING
        iv_name                 TYPE tv_name
        io_key_access           TYPE REF TO cl_xco_tt_key_access
        it_key_components       TYPE tt_key_components
      RETURNING
        VALUE(ro_secondary_key) TYPE REF TO if_xco_tt_secondary_key,

    row_type
      IMPORTING
        iv_name                 TYPE tv_name
        io_key_access           TYPE REF TO cl_xco_tt_key_access
      RETURNING
        VALUE(ro_secondary_key) TYPE REF TO if_xco_tt_secondary_key.
ENDINTERFACE.