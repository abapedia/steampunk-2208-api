INTERFACE if_xco_bimp_td_table_f PUBLIC.
  METHODS:
    for_action_import
      IMPORTING
        iv_entity_name             TYPE clike
      RETURNING
        VALUE(ro_type_declaration) TYPE REF TO if_xco_bimp_td_table,
    for_action_result
      IMPORTING
        iv_entity_name             TYPE clike
      RETURNING
        VALUE(ro_type_declaration) TYPE REF TO if_xco_bimp_td_table,
    for_create
      IMPORTING
        iv_entity_name             TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_type_declaration) TYPE REF TO if_xco_bimp_td_table,
    for_update
      IMPORTING
        iv_entity_name             TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_type_declaration) TYPE REF TO if_xco_bimp_td_table,
    for_delete
      IMPORTING
        iv_entity_name             TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_type_declaration) TYPE REF TO if_xco_bimp_td_table,
    for_lock
      IMPORTING
        iv_entity_name             TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_type_declaration) TYPE REF TO if_xco_bimp_td_table,
    for_read_import
      IMPORTING
        iv_entity_name             TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_type_declaration) TYPE REF TO if_xco_bimp_td_table,
    for_read_result
      IMPORTING
        iv_entity_name             TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_type_declaration) TYPE REF TO if_xco_bimp_td_table,
    for_mapped
      IMPORTING
        iv_entity_name             TYPE sxco_cds_object_name
        iv_late                    TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(ro_type_declaration) TYPE REF TO if_xco_bimp_td_table,
    for_failed
      IMPORTING
        iv_entity_name             TYPE sxco_cds_object_name
        iv_late                    TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(ro_type_declaration) TYPE REF TO if_xco_bimp_td_table,
    for_reported
      IMPORTING
        iv_entity_name             TYPE sxco_cds_object_name
        iv_late                    TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(ro_type_declaration) TYPE REF TO if_xco_bimp_td_table.
ENDINTERFACE.