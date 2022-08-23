INTERFACE if_fdt_cp_external_types
  PUBLIC.

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "Enumerations
  TYPES: BEGIN OF ENUM ast_node STRUCTURE ast_nodes,
           literal,
           reference,
           function,
         END OF ENUM ast_node   STRUCTURE ast_nodes.

  TYPES: BEGIN OF ENUM cpbr_object_type,
           project,
           data_object,
           ruleservice,
           ruleset,
           rule,
         END OF ENUM cpbr_object_type.

  "Constants
  CONSTANTS: BEGIN OF gcs_business_data_types,
                string    TYPE char1  VALUE 'S',
                boolean   TYPE char1  VALUE 'B',
                timestamp TYPE char1 VALUE 'U',
                date      TYPE char1 VALUE 'D',
                number    TYPE char1 VALUE 'N',
              END OF gcs_business_data_types.

  CONSTANTS: BEGIN OF gcs_data_object_types,
                element   TYPE char1 VALUE 'E',
                structure TYPE char1 VALUE 'S',
                table     TYPE char1 VALUE 'T',
              END OF gcs_data_object_types.

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  TYPES: id TYPE c LENGTH 32.
  "Common Data Types
  TYPES:
    BEGIN OF ty_label,
      language(2) TYPE c,
      text(52)    TYPE c,
    END OF ty_label,
    tt_label TYPE TABLE OF ty_label WITH DEFAULT KEY.

  TYPES:
    BEGIN OF ty_description,
      language(2) TYPE c,
      text        TYPE string,
    END OF ty_description,
    tt_description TYPE TABLE OF ty_description WITH DEFAULT KEY.

  TYPES:
    BEGIN OF ty_annotations,
      key   TYPE string,
      value TYPE string,
    END OF ty_annotations,
    tt_annotations TYPE TABLE OF ty_annotations WITH DEFAULT KEY.

  TYPES:
    BEGIN OF ty_admin_data,
      name        TYPE string,
      project     TYPE string,
      label       TYPE tt_label,
      description TYPE tt_description,
      annotations TYPE tt_annotations,
    END OF ty_admin_data.

  TYPES:
    BEGIN OF ty_object_id,
      object_id(32) TYPE c,
    END OF ty_object_id.
  TYPES:
    tt_object_id TYPE TABLE OF ty_object_id WITH DEFAULT KEY.
  TYPES:
    BEGIN OF ty_obj_id_sequence.
      INCLUDE TYPE ty_object_id.
  TYPES: sequence_number TYPE i,
    END OF ty_obj_id_sequence.
  TYPES:
    tt_obj_id_sequence TYPE TABLE OF ty_obj_id_sequence WITH DEFAULT KEY.

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "Ruleset Data Types
  TYPES: ty_priority TYPE p LENGTH 3 DECIMALS 2.
  TYPES: ty_policy   TYPE c LENGTH 1.

  TYPES:
    BEGIN OF ty_ruleset_vocabulary,
      inclusion TYPE tt_object_id,
      exclusion TYPE tt_object_id,
    END OF ty_ruleset_vocabulary.
  TYPES:
    BEGIN OF ty_ruleset_precondition,
      ast TYPE REF TO if_fdt_cp_ast_node,
    END OF ty_ruleset_precondition.
  TYPES:
    BEGIN OF ty_ruleset_rule.
      INCLUDE TYPE ty_obj_id_sequence.
  TYPES:
      condition TYPE REF TO if_fdt_cp_ast_node,
    END OF ty_ruleset_rule,
    tt_ruleset_rule TYPE TABLE OF ty_ruleset_rule WITH DEFAULT KEY.
  TYPES:
    BEGIN OF ty_ruleset,
      condition    TYPE ty_ruleset_precondition,
      priority     TYPE ty_priority,
      policy       TYPE ty_policy,
      vocabulary   TYPE ty_ruleset_vocabulary,
      rule_service TYPE ty_object_id,
      rule         TYPE tt_ruleset_rule,
    END OF ty_ruleset.

  TYPES: BEGIN OF ty_ruleset_external,
           id TYPE id.
           INCLUDE TYPE ty_admin_data.
           INCLUDE TYPE ty_ruleset.
  TYPES: END OF ty_ruleset_external.

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "Ruleservice data types
  TYPES:
    BEGIN OF ty_ruleservice_vocabulary,
      input     TYPE tt_object_id,
      reference TYPE tt_object_id,
      result    TYPE tt_object_id,
    END OF ty_ruleservice_vocabulary.

  TYPES:
    BEGIN OF ty_ruleservice,
      vocabulary TYPE ty_ruleservice_vocabulary,
    END OF ty_ruleservice.

  TYPES: BEGIN OF ty_ruleservice_external,
           id TYPE id.
           INCLUDE TYPE ty_admin_data.
           INCLUDE TYPE ty_ruleservice.
  TYPES: END OF ty_ruleservice_external.

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "Rule types
  TYPES: BEGIN OF ty_ast_literal_output,
            data_object_type   TYPE char1,
            business_data_type TYPE char1,
          END OF ty_ast_literal_output.

  TYPES: BEGIN OF ty_ast_children,
            sequence_number TYPE i,
            node            TYPE REF TO if_fdt_cp_ast_node,
          END OF ty_ast_children,
          tt_ast_children TYPE TABLE OF ty_ast_children WITH DEFAULT KEY.

  TYPES: BEGIN OF ty_predefined_result,
            id              TYPE string,
            sequence_number TYPE i,
            mode            TYPE char1,
            segment         TYPE string,
            ast             TYPE REF TO if_fdt_cp_ast_node,
          END OF ty_predefined_result,
          tt_predefined_result TYPE TABLE OF ty_predefined_result WITH DEFAULT KEY.

  TYPES: BEGIN OF ty_text_rule_branch_operation,
           id              TYPE string,
           sequence_number TYPE i,
           segment         TYPE string,
           ast             TYPE REF TO if_fdt_cp_ast_node,
         END OF ty_text_rule_branch_operation,
         tt_text_rule_branch_operation TYPE TABLE OF ty_text_rule_branch_operation WITH DEFAULT KEY.

  TYPES: BEGIN OF ty_text_rule_branch,
           id              TYPE string,
           sequence_number TYPE i,
           condition       TYPE REF TO if_fdt_cp_ast_node,
           operation       TYPE tt_text_rule_branch_operation,
         END OF ty_text_rule_branch,
         tt_text_rule_branch TYPE TABLE OF ty_text_rule_branch WITH DEFAULT KEY.

  TYPES: BEGIN OF ty_text_rule_default_branch,
            id        TYPE string,
            operation TYPE tt_text_rule_branch_operation,
          END OF ty_text_rule_default_branch.

  TYPES: BEGIN OF ty_text_rule,
            predefined TYPE tt_predefined_result,
            branches   TYPE tt_text_rule_branch,
            default    TYPE ty_text_rule_default_branch,
          END OF ty_text_rule.

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Decision Tables
  TYPES:
    ty_hit_policy TYPE c LENGTH 3,
    BEGIN OF ty_dt_column_condition,
      ast            TYPE REF TO if_fdt_cp_ast_node,
      fixed_operator TYPE string,
    END OF ty_dt_column_condition,
    BEGIN OF ty_dt_column_result_cell,
      mode TYPE char1,
      ast  TYPE REF TO if_fdt_cp_ast_node,
    END OF ty_dt_column_result_cell,
    BEGIN OF ty_dt_column_result,
      segment TYPE if_fdt_cp_external_types=>id,
      cell    TYPE ty_dt_column_result_cell,
    END OF ty_dt_column_result,
    BEGIN OF ty_decision_table_column,
      id              TYPE id,
      sequence_number TYPE i,
      type            TYPE c LENGTH 1,
      condition       TYPE ty_dt_column_condition,
      result          TYPE ty_dt_column_result,
    END OF ty_decision_table_column,
    tt_decision_table_column TYPE SORTED TABLE OF ty_decision_table_column WITH UNIQUE KEY sequence_number,
    BEGIN OF ty_decision_table_row,
      id              TYPE id,
      sequence_number TYPE i,
    END OF ty_decision_table_row,
    tt_decision_table_row TYPE SORTED TABLE OF ty_decision_table_row WITH UNIQUE KEY sequence_number,
    BEGIN OF ty_decision_table_cell,
      column_id TYPE id,
      row_id    TYPE id,
      ast       TYPE REF TO if_fdt_cp_ast_node,
    END OF ty_decision_table_cell,
    tt_decision_table_cell TYPE TABLE OF ty_decision_table_cell WITH DEFAULT KEY.
ENDINTERFACE.