INTERFACE if_xco_cp_tm_time_zone_factory PUBLIC.
  DATA:
    user TYPE REF TO if_xco_tm_time_zone READ-ONLY,
    utc  TYPE REF TO if_xco_tm_time_zone READ-ONLY.
ENDINTERFACE.