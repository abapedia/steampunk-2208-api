INTERFACE if_xco_cp_gen_fugr_d_o_post_o PUBLIC.
  DATA:
    name_choice TYPE REF TO if_xco_name_choice READ-ONLY.

  METHODS:
    set_package
      IMPORTING
        iv_package   TYPE sxco_package
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_fugr_d_o_post_o,

    create_form_specification
      RETURNING
        VALUE(ro_form_specification) TYPE REF TO if_xco_cp_gen_fugr_s_form,

    delete_form_specification,

    get_form_specification
      RETURNING
        VALUE(ro_form_specification) TYPE REF TO if_xco_cp_gen_fugr_s_form.
ENDINTERFACE.