INTERFACE if_xco_gen_clas_s_in_definitn PUBLIC.
  TYPES:
    BEGIN OF ts_section,
      public    TYPE REF TO if_xco_gen_clas_s_in_d_section,
      protected TYPE REF TO if_xco_gen_clas_s_in_d_section,
      private   TYPE REF TO if_xco_gen_clas_s_in_d_section,
    END OF ts_section.

  DATA:
    section TYPE ts_section READ-ONLY.
ENDINTERFACE.