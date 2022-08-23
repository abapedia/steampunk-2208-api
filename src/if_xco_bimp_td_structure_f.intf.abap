INTERFACE if_xco_bimp_td_structure_f PUBLIC.
  METHODS:
    for_hierarchy
      IMPORTING
        iv_behavior_definition_name TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_type_declaration)  TYPE REF TO if_xco_bimp_td_structure.
ENDINTERFACE.