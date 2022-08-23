INTERFACE if_xco_gen_clas_s_fo_d_intrfce PUBLIC.
  TYPES:
    tv_method_name  TYPE c LENGTH 61,
    tt_method_names TYPE STANDARD TABLE OF tv_method_name WITH EMPTY KEY.

  METHODS:
    set_all_methods_final
      IMPORTING
        iv_all_methods_final TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_clas_s_fo_d_intrfce,
    set_all_methods_abstract
      IMPORTING
        iv_all_methods_abstract TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_gen_clas_s_fo_d_intrfce,
    set_final_methods
      IMPORTING
        it_names     TYPE tt_method_names
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_d_intrfce,
    set_abstract_methods
      IMPORTING
        it_names     TYPE tt_method_names
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_d_intrfce.
ENDINTERFACE.