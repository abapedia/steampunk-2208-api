INTERFACE if_xco_cp_gen_ddlx_d_o_put_obj PUBLIC.
  DATA:
    name TYPE sxco_cds_object_name READ-ONLY.

  METHODS:
    set_package
      IMPORTING
        iv_package   TYPE sxco_package
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_ddlx_d_o_put_obj,
    create_form_specification
      RETURNING
        VALUE(ro_form_specification) TYPE REF TO if_xco_cp_gen_ddlx_s_form,
    delete_form_specification,
    get_form_specification
      RETURNING
        VALUE(ro_form_specification) TYPE REF TO if_xco_cp_gen_ddlx_s_form.
ENDINTERFACE.