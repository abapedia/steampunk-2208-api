INTERFACE if_xco_cp_gen_tabl_gtt_d_o_p_o PUBLIC.
  DATA:
    name TYPE sxco_gtt_object_name READ-ONLY.

  METHODS:
    set_package
      IMPORTING
        iv_package   TYPE sxco_package
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_tabl_gtt_d_o_p_o,

    create_form_specification
      RETURNING
        VALUE(ro_form_specification) TYPE REF TO if_xco_cp_gen_tabl_gtt_s_form,

    delete_form_specification,

    get_form_specification
      RETURNING
        VALUE(ro_form_specification) TYPE REF TO if_xco_cp_gen_tabl_gtt_s_form.
ENDINTERFACE.