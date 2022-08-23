INTERFACE if_xco_cds_annotation PUBLIC.
  INTERFACES:
    if_xco_printable.

  METHODS:
    get_property
      RETURNING
        VALUE(rv_property) TYPE sxco_cds_ann_property,
    get_value
      RETURNING
        VALUE(ro_value) TYPE REF TO if_xco_cds_ann_value.
ENDINTERFACE.