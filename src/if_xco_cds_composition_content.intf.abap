INTERFACE if_xco_cds_composition_content PUBLIC.
  TYPES:
    BEGIN OF ts_cardinality,
      min TYPE i,
      max TYPE i,
    END OF ts_cardinality,

    BEGIN OF ts_content,
      cardinality TYPE ts_cardinality,
      alias       TYPE sxco_ddef_alias_name,
    END OF ts_content.

  DATA:
    composition TYPE REF TO if_xco_cds_composition READ-ONLY,

    read_state  TYPE REF TO cl_xco_ddef_object_read_state READ-ONLY.

  METHODS:
    get_cardinality
      RETURNING
        VALUE(rs_cardinality) TYPE ts_cardinality,

    get_alias
      RETURNING
        VALUE(rv_alias) TYPE sxco_ddef_alias_name,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.