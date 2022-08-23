INTERFACE if_xco_gen_bdef_s_fo_b_etag PUBLIC.
  METHODS:
    set_master
      IMPORTING
        iv_field     TYPE sxco_cds_field_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_etag,

    set_dependent_by
      IMPORTING
        iv_association_name TYPE sxco_cds_association_name
      RETURNING
        VALUE(ro_me)        TYPE REF TO if_xco_gen_bdef_s_fo_b_etag,

    set_use
      IMPORTING
        iv_use       TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_etag.
ENDINTERFACE.