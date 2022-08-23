INTERFACE if_xco_gen_tabl_aps_enh_cat PUBLIC.
  METHODS:
    get
      RETURNING
        VALUE(ro_enhancement_category) TYPE REF TO cl_xco_gen_tabl_aps_enh_cat.
ENDINTERFACE.