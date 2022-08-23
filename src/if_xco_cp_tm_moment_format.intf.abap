INTERFACE if_xco_cp_tm_moment_format PUBLIC.
  METHODS:
    to_moment
      IMPORTING
        iv_string        TYPE simple
      RETURNING
        VALUE(ro_moment) TYPE REF TO if_xco_cp_tm_moment,

    from_moment
      IMPORTING
        io_moment        TYPE REF TO if_xco_cp_tm_moment
      RETURNING
        VALUE(rv_string) TYPE string.
ENDINTERFACE.