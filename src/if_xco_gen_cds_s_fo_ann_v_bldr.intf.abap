INTERFACE if_xco_gen_cds_s_fo_ann_v_bldr PUBLIC.
  METHODS:
    add
      IMPORTING
        io_value     TYPE REF TO if_xco_cds_ann_value
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_cds_s_fo_ann_v_bldr,

    begin_record
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_cds_s_fo_ann_v_bldr,

    end_record
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_cds_s_fo_ann_v_bldr,

    begin_array
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_cds_s_fo_ann_v_bldr,

    end_array
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_cds_s_fo_ann_v_bldr,

    add_member
      IMPORTING
        iv_name      TYPE string
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_cds_s_fo_ann_v_bldr,

    add_string
      IMPORTING
        iv_value     TYPE string
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_cds_s_fo_ann_v_bldr,

    add_enum
      IMPORTING
        iv_value     TYPE string
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_cds_s_fo_ann_v_bldr,

    add_number
      IMPORTING
        iv_value     TYPE numeric
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_cds_s_fo_ann_v_bldr,

    add_boolean
      IMPORTING
        iv_value     TYPE abap_bool
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_cds_s_fo_ann_v_bldr,

    add_null
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_cds_s_fo_ann_v_bldr.
ENDINTERFACE.