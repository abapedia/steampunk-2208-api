INTERFACE if_mbc_cp_rap_tdat_cts PUBLIC.

  TYPES:
    BEGIN OF table_entity_relation,
      table  TYPE tabname,
      entity TYPE sxco_cds_object_name,
    END OF table_entity_relation,
    table_entity_relations TYPE SORTED TABLE OF table_entity_relation WITH UNIQUE KEY table.
  METHODS record_changes
    IMPORTING transport_request TYPE sxco_transport
              create            TYPE REF TO data
              update            TYPE REF TO data
              delete            TYPE REF TO data
    RAISING   cx_mbc_api_exception.
  METHODS validate_changes
    IMPORTING transport_request TYPE sxco_transport OPTIONAL
              table             TYPE tabname
              keys              TYPE REF TO data
              reported          TYPE REF TO data
              failed            TYPE REF TO data
              change            TYPE REF TO data
    RAISING   cx_mbc_api_exception.
  METHODS is_transport_allowed
    RETURNING VALUE(result) TYPE abap_bool.
  METHODS is_transport_mandatory
    RETURNING VALUE(result) TYPE abap_bool.
  METHODS is_editable
    RETURNING VALUE(result) TYPE abap_bool.

ENDINTERFACE.