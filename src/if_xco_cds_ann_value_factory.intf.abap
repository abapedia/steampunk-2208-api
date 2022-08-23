INTERFACE if_xco_cds_ann_value_factory PUBLIC.
  DATA:
    null TYPE REF TO if_xco_cds_ann_value READ-ONLY.

  METHODS:
    record
      IMPORTING
        it_members      TYPE sxco_t_cds_ann_val_member
      RETURNING
        VALUE(ro_value) TYPE REF TO if_xco_cds_ann_value,

    array
      IMPORTING
        it_values       TYPE sxco_t_cds_ann_values
      RETURNING
        VALUE(ro_value) TYPE REF TO if_xco_cds_ann_value,

    string
      IMPORTING
        iv_string       TYPE clike
      RETURNING
        VALUE(ro_value) TYPE REF TO if_xco_cds_ann_value,

    enum
      IMPORTING
        iv_enum         TYPE clike
      RETURNING
        VALUE(ro_value) TYPE REF TO if_xco_cds_ann_value,

    number
      IMPORTING
        iv_number       TYPE numeric
      RETURNING
        VALUE(ro_value) TYPE REF TO if_xco_cds_ann_value,

    boolean
      IMPORTING
        iv_boolean      TYPE abap_bool
      RETURNING
        VALUE(ro_value) TYPE REF TO if_xco_cds_ann_value,

    builder
      RETURNING
        VALUE(ro_builder) TYPE REF TO if_xco_cds_ann_value_builder.
ENDINTERFACE.