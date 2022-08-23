INTERFACE if_xco_cp_gen_tabl_dbt_dopu_sc PUBLIC.
  METHODS:
    add_object
      IMPORTING
        iv_name          TYPE sxco_dbt_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_tabl_dbt_d_o_p_o,

    remove_object
      IMPORTING
        iv_name TYPE sxco_dbt_object_name,

    get_object
      IMPORTING
        iv_name          TYPE sxco_dbt_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_tabl_dbt_d_o_p_o.
ENDINTERFACE.