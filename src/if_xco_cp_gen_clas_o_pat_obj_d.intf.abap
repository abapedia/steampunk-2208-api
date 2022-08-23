INTERFACE if_xco_cp_gen_clas_o_pat_obj_d PUBLIC.
  TYPES:
    BEGIN OF ts_section,
      public    TYPE REF TO if_xco_cp_gen_clas_o_pat_o_d_s,
      protected TYPE REF TO if_xco_cp_gen_clas_o_pat_o_d_s,
      private   TYPE REF TO if_xco_cp_gen_clas_o_pat_o_d_s,
    END OF ts_section.

  DATA:
    section TYPE ts_section READ-ONLY.
ENDINTERFACE.