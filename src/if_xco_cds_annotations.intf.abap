INTERFACE if_xco_cds_annotations PUBLIC.
  INTERFACES:
    if_xco_printable.

  METHODS:
    contain
      IMPORTING
        iv_property       TYPE sxco_cds_ann_property
      RETURNING
        VALUE(rv_contain) TYPE abap_bool,

    pick
      IMPORTING
        iv_property          TYPE sxco_cds_ann_property
      RETURNING
        VALUE(ro_annotation) TYPE REF TO if_xco_cds_annotation,

    retain
      IMPORTING
        it_filters            TYPE sxco_t_cds_ann_filters
      RETURNING
        VALUE(ro_annotations) TYPE REF TO if_xco_cds_annotations,

    remove
      IMPORTING
        it_filters            TYPE sxco_t_cds_ann_filters
      RETURNING
        VALUE(ro_annotations) TYPE REF TO if_xco_cds_annotations,

    add
      IMPORTING
        it_annotations        TYPE sxco_t_cds_annotations
      RETURNING
        VALUE(ro_annotations) TYPE REF TO if_xco_cds_annotations,

    get
      RETURNING
        VALUE(rt_annotations) TYPE sxco_t_cds_annotations.
ENDINTERFACE.