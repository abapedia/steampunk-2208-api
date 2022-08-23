INTERFACE if_xco_cp_gen_clas_s_update PUBLIC.
  DATA:
    definition     TYPE REF TO if_xco_gen_clas_s_up_definitn READ-ONLY,
    implementation TYPE REF TO if_xco_gen_clas_s_update_imp READ-ONLY.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ao_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_clas_s_update.
ENDINTERFACE.