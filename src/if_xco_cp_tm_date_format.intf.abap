INTERFACE if_xco_cp_tm_date_format PUBLIC.
  METHODS:
    to_date
      IMPORTING
        iv_string      TYPE simple
      RETURNING
        VALUE(ro_date) TYPE REF TO if_xco_cp_tm_date,

    from_date
      IMPORTING
        io_date          TYPE REF TO if_xco_cp_tm_date
      RETURNING
        VALUE(rv_string) TYPE string.
ENDINTERFACE.