INTERFACE if_xco_behavior_definition_co PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description TYPE sxco_ar_short_description,
    END OF ts_content.

  DATA:
    behavior_definition TYPE REF TO if_xco_behavior_definition READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description.
ENDINTERFACE.