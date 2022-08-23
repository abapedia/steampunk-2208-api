INTERFACE if_xco_cp_gen_clas_o_pat_o_d_s PUBLIC.
  TYPES:
    BEGIN OF ts_for,
      insert TYPE REF TO if_xco_cp_gen_clas_s_in_d_sect,
      delete TYPE REF TO if_xco_cp_gen_clas_s_de_d_sect,
    END OF ts_for.

  DATA:
    for TYPE ts_for READ-ONLY.
ENDINTERFACE.