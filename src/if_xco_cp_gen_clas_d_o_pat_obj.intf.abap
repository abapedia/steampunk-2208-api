INTERFACE if_xco_cp_gen_clas_d_o_pat_obj PUBLIC.
  TYPES:
    BEGIN OF ts_for,
      delete TYPE REF TO if_xco_cp_gen_clas_s_delete,
      insert TYPE REF TO if_xco_cp_gen_clas_s_insert,
      update TYPE REF TO if_xco_cp_gen_clas_s_update,
    END OF ts_for.

  DATA:
    name       TYPE sxco_ao_object_name READ-ONLY,

    for        TYPE ts_for READ-ONLY,
    definition TYPE REF TO if_xco_cp_gen_clas_o_pat_obj_d READ-ONLY.
ENDINTERFACE.