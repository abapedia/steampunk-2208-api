INTERFACE if_xco_cds_ann_val_p_number PUBLIC.
  INTERFACES:
    if_xco_cds_ann_val_primitive.

  ALIASES:
    get_source FOR if_xco_cds_ann_val_primitive~get_source.

  METHODS:
    get_value
      RETURNING
        VALUE(rv_value) TYPE REF TO data.
ENDINTERFACE.