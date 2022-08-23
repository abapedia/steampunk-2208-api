INTERFACE if_fdt_cp_factory
  PUBLIC.
  METHODS
    get_ruleset IMPORTING iv_id             TYPE if_fdt_cp_external_types=>id OPTIONAL
                          iv_project        TYPE if_fdt_cp_external_types=>id OPTIONAL
                RETURNING VALUE(ro_ruleset) TYPE REF TO if_fdt_cp_ruleset.
  METHODS
    get_ruleservice IMPORTING iv_id                 TYPE if_fdt_cp_external_types=>id OPTIONAL
                              iv_project            TYPE if_fdt_cp_external_types=>id OPTIONAL
                    RETURNING VALUE(ro_ruleservice) TYPE REF TO if_fdt_cp_ruleservice.
  METHODS
    get_ast_factory RETURNING VALUE(ro_ast_factory) TYPE REF TO if_fdt_cp_ast_factory.

  METHODS
    get_text_rule   IMPORTING iv_id               TYPE if_fdt_cp_external_types=>id OPTIONAL
                              iv_project          TYPE if_fdt_cp_external_types=>id OPTIONAL
                    RETURNING VALUE(ro_text_rule) TYPE REF TO if_fdt_cp_text_rule.
  METHODS
    get_decision_table  IMPORTING iv_id                    TYPE if_fdt_cp_external_types=>id OPTIONAL
                                  iv_project               TYPE if_fdt_cp_external_types=>id OPTIONAL
                        RETURNING VALUE(ro_decision_table) TYPE REF TO if_fdt_cp_decision_table.

  METHODS:
    get_project IMPORTING iv_id             TYPE if_fdt_cp_external_types=>id OPTIONAL
                RETURNING VALUE(ro_project) TYPE REF TO if_fdt_cp_project,

    get_data_object IMPORTING iv_id                 TYPE if_fdt_cp_external_types=>id OPTIONAL
                              iv_project            TYPE if_fdt_cp_external_types=>id OPTIONAL
                              iv_data_object_type   TYPE char1
                    RETURNING VALUE(ro_data_object) TYPE REF TO if_fdt_cp_data_object.

  METHODS:
    load_object_by_json IMPORTING iv_json          TYPE string
                        RETURNING VALUE(ro_object) TYPE REF TO if_fdt_cp_admin_data.

ENDINTERFACE.