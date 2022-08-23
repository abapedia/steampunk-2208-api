INTERFACE if_xco_gen_ddls_s_fo_compos PUBLIC.
  DATA:
    target TYPE sxco_cds_object_name READ-ONLY.

  METHODS:
    set_cardinality
      IMPORTING
        io_cardinality TYPE REF TO if_xco_gen_cds_cardinality
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_ddls_s_fo_compos,

    set_alias
      IMPORTING
        iv_alias     TYPE sxco_ddef_alias_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ddls_s_fo_compos.
ENDINTERFACE.