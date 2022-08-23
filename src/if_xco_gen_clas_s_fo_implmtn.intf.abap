INTERFACE if_xco_gen_clas_s_fo_implmtn PUBLIC.
  TYPES:
    tv_method_name TYPE c LENGTH 61.

  METHODS:
    add_method
      IMPORTING
        iv_name                         TYPE tv_method_name
      RETURNING
        VALUE(ro_method_implementation) TYPE REF TO if_xco_gen_clas_s_fo_i_method,

    get_method
      IMPORTING
        iv_name                         TYPE tv_method_name
      RETURNING
        VALUE(ro_method_implementation) TYPE REF TO if_xco_gen_clas_s_fo_i_method,

    remove_method
      IMPORTING
        iv_name TYPE tv_method_name.
ENDINTERFACE.