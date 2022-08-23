INTERFACE if_xco_gen_cds_s_fo_ann_value PUBLIC.
  METHODS:
    set
      IMPORTING
        io_value     TYPE REF TO if_xco_cds_ann_value
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_cds_s_fo_ann_value,

    build
      RETURNING
        VALUE(ro_builder) TYPE REF TO if_xco_gen_cds_s_fo_ann_v_bldr.
ENDINTERFACE.