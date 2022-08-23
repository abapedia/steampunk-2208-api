INTERFACE if_xco_gen_clas_s_fo_i_method PUBLIC.
  TYPES:
    tt_source TYPE string_table.

  DATA:
    method_name TYPE if_xco_gen_clas_s_fo_implmtn=>tv_method_name READ-ONLY,

    amdp        TYPE REF TO if_xco_gen_clas_s_fo_i_m_amdp READ-ONLY.

  METHODS:
    set_source
      IMPORTING
        it_source    TYPE tt_source
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_i_method.
ENDINTERFACE.