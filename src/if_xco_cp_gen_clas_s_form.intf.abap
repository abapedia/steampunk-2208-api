INTERFACE if_xco_cp_gen_clas_s_form PUBLIC.
  TYPES:
    tv_short_description TYPE sxco_ao_short_description.

  DATA:
    definition     TYPE REF TO if_xco_gen_clas_s_fo_defntn READ-ONLY,
    implementation TYPE REF TO if_xco_gen_clas_s_fo_implmtn READ-ONLY,

    own            TYPE REF TO if_xco_gen_ao_s_fo_product READ-ONLY.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_clas_s_form,

    add_local_class
      IMPORTING
        iv_name               TYPE sxco_ao_object_name
      RETURNING
        VALUE(ro_local_class) TYPE REF TO if_xco_gen_clas_s_fo_lcl_class,

    get_local_class
      IMPORTING
        iv_name               TYPE sxco_ao_object_name
      RETURNING
        VALUE(ro_local_class) TYPE REF TO if_xco_gen_clas_s_fo_lcl_class,

    remove_local_class
      IMPORTING
        iv_name               TYPE sxco_ao_object_name
      RETURNING
        VALUE(ro_local_class) TYPE REF TO if_xco_gen_clas_s_fo_lcl_class.
ENDINTERFACE.