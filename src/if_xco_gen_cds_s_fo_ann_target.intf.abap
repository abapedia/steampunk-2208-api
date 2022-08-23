INTERFACE if_xco_gen_cds_s_fo_ann_target PUBLIC.
  METHODS:
    add_annotation
      IMPORTING
        iv_property          TYPE sxco_cds_ann_property
      RETURNING
        VALUE(ro_annotation) TYPE REF TO if_xco_gen_cds_s_fo_annotation,

    remove_annotation
      IMPORTING
        iv_property TYPE sxco_cds_ann_property.
ENDINTERFACE.