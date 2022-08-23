INTERFACE if_xco_tt_secondary_key PUBLIC.
  TYPES:
    tv_name           TYPE c LENGTH 30,

    tv_key_component  TYPE c LENGTH 132,
    tt_key_components TYPE STANDARD TABLE OF tv_key_component WITH DEFAULT KEY.

  DATA:
    name           TYPE tv_name READ-ONLY,

    key_access     TYPE REF TO cl_xco_tt_key_access READ-ONLY,
    key_definition TYPE REF TO cl_xco_tt_key_definition READ-ONLY,

    key_components TYPE tt_key_components READ-ONLY.
ENDINTERFACE.