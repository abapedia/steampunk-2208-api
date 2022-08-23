INTERFACE if_xco_gen_bdef_s_fo_b_a_rsult PUBLIC.
  METHODS:
    set_cardinality
      IMPORTING
        io_cardinality TYPE REF TO if_xco_gen_bdef_rslt_cardnalty
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_bdef_s_fo_b_a_rsult,

    set_self
      IMPORTING
        iv_self      TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_a_rsult,

    set_entity
      IMPORTING
        iv_entity    TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_a_rsult.
ENDINTERFACE.