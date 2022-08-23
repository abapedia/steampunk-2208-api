INTERFACE if_xco_gen_ddls_s_fo_param PUBLIC.
  INTERFACES:
    if_xco_gen_cds_s_fo_ann_target.

  ALIASES:
    add_annotation FOR if_xco_gen_cds_s_fo_ann_target~add_annotation,

    remove_annotation FOR if_xco_gen_cds_s_fo_ann_target~remove_annotation.

  DATA:
    name TYPE sxco_cds_parameter_name READ-ONLY.

  METHODS:
    set_data_type
      IMPORTING
        io_data_type TYPE REF TO if_xco_gen_ddls_param_dtype
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ddls_s_fo_param.
ENDINTERFACE.