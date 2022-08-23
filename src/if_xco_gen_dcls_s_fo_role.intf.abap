INTERFACE if_xco_gen_dcls_s_fo_role PUBLIC.
  INTERFACES:
    if_xco_gen_cds_s_fo_ann_target.

  ALIASES:
    add_annotation FOR if_xco_gen_cds_s_fo_ann_target~add_annotation,

    remove_annotation FOR if_xco_gen_cds_s_fo_ann_target~remove_annotation.

  METHODS:
    add_access_rule
      IMPORTING
        iv_cds_entity         TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_access_rule) TYPE REF TO if_xco_gen_dcls_s_fo_r_a_rule.
ENDINTERFACE.