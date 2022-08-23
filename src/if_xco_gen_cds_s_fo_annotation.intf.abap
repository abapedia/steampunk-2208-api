INTERFACE if_xco_gen_cds_s_fo_annotation PUBLIC.
  DATA:
    property TYPE sxco_cds_ann_property READ-ONLY,
    value    TYPE REF TO if_xco_gen_cds_s_fo_ann_value READ-ONLY.
ENDINTERFACE.