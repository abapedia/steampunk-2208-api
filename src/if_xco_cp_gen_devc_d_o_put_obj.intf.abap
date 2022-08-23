INTERFACE if_xco_cp_gen_devc_d_o_put_obj PUBLIC.
  DATA:
    name TYPE sxco_package READ-ONLY.

  METHODS:
    create_form_specification
      RETURNING
        VALUE(ro_form_specification) TYPE REF TO if_xco_cp_gen_devc_s_form,
    delete_form_specification,
    get_form_specification
      RETURNING
        VALUE(ro_form_specification) TYPE REF TO if_xco_cp_gen_devc_s_form.
ENDINTERFACE.