INTERFACE if_xco_cds_ann_value_builder PUBLIC.
  METHODS:
    add
      IMPORTING
        io_value     TYPE REF TO if_xco_cds_ann_value
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cds_ann_value_builder,
    begin_record
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cds_ann_value_builder,
    end_record
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cds_ann_value_builder,
    begin_array
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cds_ann_value_builder,
    end_array
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cds_ann_value_builder,
    add_member
      IMPORTING
        iv_name      TYPE string
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cds_ann_value_builder,
    add_string
      IMPORTING
        iv_value     TYPE string
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cds_ann_value_builder,
    add_enum
      IMPORTING
        iv_value     TYPE string
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cds_ann_value_builder,
    add_number
      IMPORTING
        iv_value     TYPE numeric
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cds_ann_value_builder,
    add_boolean
      IMPORTING
        iv_value     TYPE abap_bool
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cds_ann_value_builder,
    add_null
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cds_ann_value_builder,
    get_value
      RETURNING
        VALUE(ro_value) TYPE REF TO if_xco_cds_ann_value.
ENDINTERFACE.