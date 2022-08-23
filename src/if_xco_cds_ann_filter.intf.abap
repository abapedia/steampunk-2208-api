INTERFACE if_xco_cds_ann_filter PUBLIC.
  METHODS:
    apply
      IMPORTING
        io_selection_builder        TYPE REF TO cl_xco_cds_ann_selection_bldr
      RETURNING
        VALUE(ro_selection_builder) TYPE REF TO cl_xco_cds_ann_selection_bldr.
ENDINTERFACE.