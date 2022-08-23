INTERFACE if_xco_gen_clas_s_fo_lcl_class PUBLIC.
  DATA:
    name           TYPE sxco_ao_object_name READ-ONLY,

    definition     TYPE REF TO if_xco_gen_clas_s_fo_defntn READ-ONLY,
    implementation TYPE REF TO if_xco_gen_clas_s_fo_implmtn READ-ONLY,

    own            TYPE REF TO if_xco_gen_ao_s_fo_product READ-ONLY.
ENDINTERFACE.