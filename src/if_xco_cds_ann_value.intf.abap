INTERFACE if_xco_cds_ann_value PUBLIC.
  METHODS:
    traverse
      IMPORTING
        io_visitor TYPE REF TO if_xco_cds_ann_vt_visitor,

    write_to
      IMPORTING
        ia_value TYPE REF TO data.
ENDINTERFACE.