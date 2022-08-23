INTERFACE if_xco_cp_gen_srvd_s_form PUBLIC.
  TYPES:
     tv_short_description TYPE sxco_ar_short_description.

  INTERFACES:
    if_xco_gen_cds_s_fo_ann_target.

  ALIASES:
    add_annotation FOR if_xco_gen_cds_s_fo_ann_target~add_annotation,
    remove_annotation FOR if_xco_gen_cds_s_fo_ann_target~remove_annotation.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_srvd_s_form,

    add_exposure
      IMPORTING
        iv_cds_entity      TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_exposure) TYPE REF TO if_xco_gen_srvd_s_fo_exposure,

    get_exposure
      IMPORTING
        iv_cds_entity      TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_exposure) TYPE REF TO if_xco_gen_srvd_s_fo_exposure,

    remove_exposure
      IMPORTING
        iv_cds_entity TYPE sxco_cds_object_name.
ENDINTERFACE.