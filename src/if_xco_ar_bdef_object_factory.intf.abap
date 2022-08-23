INTERFACE if_xco_ar_bdef_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                       TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_behavior_definition) TYPE REF TO if_xco_behavior_definition.
ENDINTERFACE.