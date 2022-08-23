INTERFACE if_xco_gen_clas_s_fo_d_c_m_amd PUBLIC.
  METHODS:
    set_for_table_function
      IMPORTING
        iv_for_table_function TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me)          TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_amd.
ENDINTERFACE.