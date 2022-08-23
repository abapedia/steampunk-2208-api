INTERFACE if_xco_gen_ddlx_s_fo_parameter PUBLIC.
  INTERFACES:
    if_xco_gen_cds_s_fo_ann_target.

  ALIASES:
    add_annotation FOR if_xco_gen_cds_s_fo_ann_target~add_annotation,

    remove_annotation FOR if_xco_gen_cds_s_fo_ann_target~remove_annotation.

  DATA:
    name TYPE sxco_cds_parameter_name READ-ONLY.
ENDINTERFACE.