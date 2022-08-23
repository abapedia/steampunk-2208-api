INTERFACE if_xco_gen_clas_s_update_imp PUBLIC.
  METHODS:
    add_method
      IMPORTING
        iv_name                         TYPE sxco_ao_full_component_name
      RETURNING
        VALUE(ro_method_implementation) TYPE REF TO if_xco_gen_clas_s_up_impl_mthd,

    get_method
      IMPORTING
        iv_name                         TYPE sxco_ao_full_component_name
      RETURNING
        VALUE(ro_method_implementation) TYPE REF TO if_xco_gen_clas_s_up_impl_mthd,

    remove_method
      IMPORTING
        iv_name TYPE sxco_ao_full_component_name.
ENDINTERFACE.