INTERFACE if_xco_gen_ddls_s_fo_p_view_ds PUBLIC.
  METHODS:
    set_view_entity
      IMPORTING
        iv_view_entity TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_ddls_s_fo_p_view_ds,

    set_alias
      IMPORTING
        iv_alias     TYPE sxco_ddef_alias_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ddls_s_fo_p_view_ds.
ENDINTERFACE.