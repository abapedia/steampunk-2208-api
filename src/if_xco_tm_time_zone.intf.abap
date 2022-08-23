INTERFACE if_xco_tm_time_zone PUBLIC.
  TYPES:
    tv_value TYPE c LENGTH 6.

  DATA:
    value TYPE tv_value READ-ONLY.

  METHODS:
    get_date
      IMPORTING
        iv_timestamp   TYPE tzntstmps
      RETURNING
        VALUE(rv_date) TYPE d,

    get_time
      IMPORTING
        iv_timestamp   TYPE tzntstmps
      RETURNING
        VALUE(rv_time) TYPE t.
ENDINTERFACE.