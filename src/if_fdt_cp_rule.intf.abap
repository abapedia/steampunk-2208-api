INTERFACE if_fdt_cp_rule
  PUBLIC.
  INTERFACES: if_fdt_cp_admin_data,
    if_fdt_cp_actions.

  CONSTANTS: BEGIN OF gcs_rule_type,
                decision_table TYPE char2 VALUE 'DT',
                text_rule      TYPE char2 VALUE 'TR',
              END OF gcs_rule_type,
              BEGIN OF gcs_predefined_mode,
                hidden   TYPE char1 VALUE 'H',
                editable TYPE char1 VALUE 'E',
              END OF gcs_predefined_mode.
  METHODS:
    get_rule_type RETURNING VALUE(rv_type) TYPE char2,
    set_result_data_object IMPORTING VALUE(iv_result_data_object) TYPE if_fdt_cp_external_types=>id,
    get_result_data_object RETURNING VALUE(rv_result_data_object) TYPE if_fdt_cp_external_types=>id.

ENDINTERFACE.