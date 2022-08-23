INTERFACE if_com_scenario_factory
  PUBLIC.

  TYPES:
    BEGIN OF ty_query,
      cscn_id_range   TYPE RANGE OF string,
    END OF ty_query.
  METHODS query_cscn
    IMPORTING
      !is_query        TYPE if_com_scenario_factory=>ty_query OPTIONAL
    EXPORTING
      !et_com_scenario TYPE if_com_scenario=>tt_cscn.
  METHODS get_cscn_by_id
    IMPORTING
      !iv_id           TYPE if_com_scenario=>ty_cscn-id
    EXPORTING
      !eo_com_scenario TYPE REF TO if_com_scenario.
ENDINTERFACE.