INTERFACE if_fdt_cp_ruleset
  PUBLIC.

  INTERFACES if_fdt_cp_admin_data.
  INTERFACES if_fdt_cp_actions.

  CONSTANTS:
    BEGIN OF gcs_ruleset_policy,
      aggregation   TYPE char1 VALUE 'A',
      orchestration TYPE char1 VALUE 'O',
    END OF gcs_ruleset_policy.

  METHODS set_priority
    IMPORTING
      VALUE(iv_priority) TYPE if_fdt_cp_external_types=>ty_priority.
  METHODS get_priority
    RETURNING
      VALUE(rv_priority) TYPE if_fdt_cp_external_types=>ty_priority.
  METHODS get_execution_policy
    RETURNING
      VALUE(rv_execution_policy) TYPE if_fdt_cp_external_types=>ty_policy.
  METHODS set_execution_policy
    IMPORTING
      VALUE(iv_execution_policy) TYPE if_fdt_cp_external_types=>ty_policy.
  METHODS get_assigned_ruleservice
    RETURNING
      VALUE(rv_ruleservice) TYPE string.
  METHODS set_assigned_ruleservice
    IMPORTING
      VALUE(iv_ruleservice) TYPE string.
  METHODS set_assigned_rules
    IMPORTING
      VALUE(it_ruleset_rules) TYPE if_fdt_cp_external_types=>tt_ruleset_rule.
  METHODS get_assigned_rules
    RETURNING
      VALUE(rt_ruleset_rules) TYPE if_fdt_cp_external_types=>tt_ruleset_rule.
  METHODS set_ruleset_vocabulary
    IMPORTING
      VALUE(it_ruleset_vocabulary) TYPE if_fdt_cp_external_types=>ty_ruleset_vocabulary.
  METHODS get_ruleset_vocabulary
    RETURNING
      VALUE(rt_ruleset_vocabulary) TYPE if_fdt_cp_external_types=>ty_ruleset_vocabulary.
  METHODS set_header_precondition
    IMPORTING
      VALUE(io_condition) TYPE REF TO if_fdt_cp_ast_node.
  METHODS get_header_precondition
    RETURNING VALUE(ro_condition) TYPE REF TO if_fdt_cp_ast_node.
ENDINTERFACE.