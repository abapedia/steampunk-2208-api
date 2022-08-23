INTERFACE if_fdt_cp_decision_table
  PUBLIC.

  CONSTANTS:
    BEGIN OF gcs_dt_hit_policy,
      all_match   TYPE if_fdt_cp_external_types=>ty_hit_policy VALUE 'MHO',
      first_match TYPE if_fdt_cp_external_types=>ty_hit_policy VALUE 'SHF',
    END OF gcs_dt_hit_policy,
     BEGIN OF gcs_dt_column_type,
      condition   TYPE char1 VALUE 'C',
      result      TYPE char1 VALUE 'R',
    END OF gcs_dt_column_type.

  INTERFACES:
    if_fdt_cp_rule,
    if_fdt_cp_actions,
    if_fdt_cp_admin_data.

  METHODS:
    set_hit_policy IMPORTING iv_hit_policy TYPE if_fdt_cp_external_types=>ty_hit_policy,
    get_hit_policy RETURNING VALUE(rv_hit_policy) TYPE if_fdt_cp_external_types=>ty_hit_policy,
    set_columns IMPORTING it_columns TYPE if_fdt_cp_external_types=>tt_decision_table_column,
    get_columns RETURNING VALUE(rt_columns) TYPE if_fdt_cp_external_types=>tt_decision_table_column,
    add_column IMPORTING VALUE(is_column) TYPE if_fdt_cp_external_types=>ty_decision_table_column,
    remove_column IMPORTING VALUE(iv_id)              TYPE if_fdt_cp_external_types=>id OPTIONAL
                            VALUE(iv_sequence_number) TYPE i OPTIONAL,
    set_rows IMPORTING it_rows TYPE if_fdt_cp_external_types=>tt_decision_table_row,
    get_rows RETURNING VALUE(rt_rows) TYPE if_fdt_cp_external_types=>tt_decision_table_row,
    add_row IMPORTING VALUE(is_row) TYPE if_fdt_cp_external_types=>ty_decision_table_row,
    remove_row IMPORTING VALUE(iv_id) TYPE if_fdt_cp_external_types=>id OPTIONAL
                         VALUE(iv_sequence_number) TYPE i OPTIONAL,
    set_cells IMPORTING it_cells TYPE if_fdt_cp_external_types=>tt_decision_table_cell,
    get_cells RETURNING VALUE(rt_cells) TYPE if_fdt_cp_external_types=>tt_decision_table_cell,
    add_cell IMPORTING VALUE(is_cell) TYPE if_fdt_cp_external_types=>ty_decision_table_cell,
    remove_cell IMPORTING VALUE(iv_row_id)    TYPE if_fdt_cp_external_types=>id
                          VALUE(iv_column_id) TYPE if_fdt_cp_external_types=>id.

ENDINTERFACE.