INTERFACE if_xco_cds_ann_val_primitive PUBLIC.
  METHODS:
    get_source
      RETURNING
        VALUE(rv_source) TYPE string.
ENDINTERFACE.