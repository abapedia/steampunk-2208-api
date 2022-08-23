INTERFACE if_xco_cp_tm_time_format PUBLIC.
  METHODS:
    to_time
      IMPORTING
        iv_string      TYPE simple
      RETURNING
        VALUE(ro_time) TYPE REF TO if_xco_cp_tm_time,

    from_time
      IMPORTING
        io_time          TYPE REF TO if_xco_cp_tm_time
      RETURNING
        VALUE(rv_string) TYPE string.
ENDINTERFACE.