INTERFACE if_xco_gen_ddls_s_fo_assoc PUBLIC.
  DATA:
    target TYPE sxco_cds_object_name READ-ONLY.

  METHODS:
    set_cardinality
      IMPORTING
        io_cardinality TYPE REF TO if_xco_gen_cds_cardinality
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_ddls_s_fo_assoc,

    set_to_parent
      IMPORTING
        iv_to_parent TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ddls_s_fo_assoc,

    set_alias
      IMPORTING
        iv_alias     TYPE sxco_ddef_alias_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ddls_s_fo_assoc,

    set_condition
      IMPORTING
        io_condition TYPE REF TO if_xco_gen_ddls_ddl_expression
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ddls_s_fo_assoc.
ENDINTERFACE.