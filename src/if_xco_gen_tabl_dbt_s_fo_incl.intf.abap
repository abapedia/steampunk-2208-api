INTERFACE if_xco_gen_tabl_dbt_s_fo_incl PUBLIC.
  TYPES:
    tv_key_indicator TYPE c,
    tv_not_null      TYPE c,
    tv_group_name    TYPE c LENGTH 30.

  METHODS:
    set_key_indicator
      IMPORTING
        iv_key_indicator TYPE tv_key_indicator DEFAULT abap_true
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_gen_tabl_dbt_s_fo_incl,

    set_not_null
      IMPORTING
        iv_not_null  TYPE tv_not_null DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_tabl_dbt_s_fo_incl,

    set_group_name
      IMPORTING
        iv_group_name TYPE tv_group_name
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_tabl_dbt_s_fo_incl,

    set_structure
      IMPORTING
        iv_structure TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_tabl_dbt_s_fo_incl.
ENDINTERFACE.