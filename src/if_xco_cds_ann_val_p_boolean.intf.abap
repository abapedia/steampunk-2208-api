INTERFACE if_xco_cds_ann_val_p_boolean PUBLIC.
  INTERFACES:
    if_xco_cds_ann_val_primitive.

  DATA:
    value TYPE abap_bool READ-ONLY.

  ALIASES:
    get_source FOR if_xco_cds_ann_val_primitive~get_source.
ENDINTERFACE.