INTERFACE if_xco_cp_tm_moment_interval PUBLIC.
  DATA:
    lower_bound TYPE REF TO if_xco_cp_tm_moment READ-ONLY,
    upper_bound TYPE REF TO if_xco_cp_tm_moment READ-ONLY.

  METHODS:
    contains
      IMPORTING
        io_moment          TYPE REF TO if_xco_cp_tm_moment
      RETURNING
        VALUE(rv_contains) TYPE abap_bool.
ENDINTERFACE.