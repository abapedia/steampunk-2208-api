INTERFACE if_xco_cp_gen_tabl_dbt_d_o_p_o PUBLIC.
  DATA:
    name TYPE sxco_ad_object_name READ-ONLY.

  METHODS:
    set_package
      IMPORTING
        iv_package   TYPE sxco_package
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_tabl_dbt_d_o_p_o,

    set_template
      IMPORTING
        io_template TYPE REF TO if_xco_cp_gen_tabl_dbt_tmplt,

    unset_template,
    create_form_specification
      RETURNING
        VALUE(ro_form_specification) TYPE REF TO if_xco_cp_gen_tabl_dbt_s_form,
    delete_form_specification,
    get_form_specification
      RETURNING
        VALUE(ro_form_specification) TYPE REF TO if_xco_cp_gen_tabl_dbt_s_form.
ENDINTERFACE.