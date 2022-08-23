INTERFACE if_xco_gen_tabl_str_s_fo_incl PUBLIC.
  TYPES:
    tv_group_name TYPE c LENGTH 30.

  METHODS:
    set_group_name
      IMPORTING
        iv_group_name TYPE tv_group_name
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_tabl_str_s_fo_incl,

    set_structure
      IMPORTING
        iv_structure TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_tabl_str_s_fo_incl.
ENDINTERFACE.