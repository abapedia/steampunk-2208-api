INTERFACE if_xco_gen_clas_s_up_d_sc_c_md PUBLIC.
  INTERFACES:
    if_xco_gen_ao_s_up_c_method.

  TYPES:
    BEGIN OF ts_for,
      insert TYPE REF TO if_xco_gen_ao_s_up_methd_insrt,
      delete TYPE REF TO if_xco_gen_ao_s_up_methd_delet,
      update TYPE REF TO if_xco_gen_ao_s_up_methd_updat,
    END OF ts_for.

  ALIASES:
    name FOR if_xco_gen_ao_s_up_c_method~name.

  DATA:
    for TYPE ts_for READ-ONLY.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ao_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_clas_s_up_d_sc_c_md,

    set_abstract
      IMPORTING
        iv_abstract  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_up_d_sc_c_md,

    set_final
      IMPORTING
        iv_final     TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_up_d_sc_c_md.
ENDINTERFACE.