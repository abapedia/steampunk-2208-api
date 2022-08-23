INTERFACE if_fdt_cp_text_rule
  PUBLIC.
  INTERFACES: if_fdt_cp_rule,
    if_fdt_cp_actions,
    if_fdt_cp_admin_data.

  METHODS:
    set_no_default_result
      IMPORTING VALUE(iv_no_default_result) TYPE abap_bool,
    get_no_default_result
      RETURNING VALUE(rv_no_default_result) TYPE abap_bool,
    get_predefined_results
      RETURNING VALUE(rt_predefined_results) TYPE if_fdt_cp_external_types=>tt_predefined_result,
    set_predefined_results
      RETURNING VALUE(it_predefined_results) TYPE if_fdt_cp_external_types=>tt_predefined_result,
    add_predefined_result
      IMPORTING VALUE(is_predefined_result) TYPE if_fdt_cp_external_types=>ty_predefined_result,
    remove_predefined_result
      IMPORTING VALUE(iv_id)              TYPE string OPTIONAL
                VALUE(iv_sequence_number) TYPE i OPTIONAL,
    add_branch
      IMPORTING VALUE(is_text_rule_branch) TYPE if_fdt_cp_external_types=>ty_text_rule_branch,
    remove_branch
      IMPORTING VALUE(iv_id)              TYPE string OPTIONAL
                VALUE(iv_sequence_number) TYPE i OPTIONAL,
    get_branches
      RETURNING VALUE(rt_branches) TYPE if_fdt_cp_external_types=>tt_text_rule_branch,
    set_branches
      IMPORTING VALUE(it_branches) TYPE if_fdt_cp_external_types=>tt_text_rule_branch,
    get_default_branch
      RETURNING VALUE(rs_default_branch) TYPE if_fdt_cp_external_types=>ty_text_rule_default_branch,
    add_default_branch
      IMPORTING VALUE(is_default_branch) TYPE if_fdt_cp_external_types=>ty_text_rule_default_branch,
    remove_default_branch.

ENDINTERFACE.