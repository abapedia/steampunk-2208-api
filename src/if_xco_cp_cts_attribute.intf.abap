INTERFACE if_xco_cp_cts_attribute PUBLIC.
  TYPES:
    tv_name TYPE c LENGTH 30.

  DATA:
    name TYPE tv_name READ-ONLY.
ENDINTERFACE.