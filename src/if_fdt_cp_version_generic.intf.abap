INTERFACE if_fdt_cp_version_generic
  PUBLIC.
  CONSTANTS:
    BEGIN OF gcs_payload_type,
      rule_service_version TYPE char20 VALUE 'RuleServiceVersion',
      project_version      TYPE char20 VALUE 'ProjectVersion',
    END OF gcs_payload_type.

  TYPES:
    tt_project     TYPE TABLE OF REF TO if_fdt_cp_project WITH DEFAULT KEY,
    tt_dataobject  TYPE TABLE OF REF TO if_fdt_cp_data_object WITH DEFAULT KEY,
    tt_ruleservice TYPE TABLE OF REF TO if_fdt_cp_ruleservice WITH DEFAULT KEY,
    tt_ruleset     TYPE TABLE OF REF TO if_fdt_cp_ruleset WITH DEFAULT KEY,
    tt_rule        TYPE TABLE OF REF TO if_fdt_cp_rule WITH DEFAULT KEY.

  DATA:
        mv_payload_type TYPE char20 READ-ONLY.

  METHODS:
    get_projects RETURNING VALUE(rt_project) TYPE tt_project,
    get_data_objects RETURNING VALUE(rt_dataobject) TYPE tt_dataobject,
    get_ruleservices RETURNING VALUE(rt_ruleservice) TYPE tt_ruleservice,
    get_rulesets RETURNING VALUE(rt_ruleset) TYPE tt_ruleset,
    get_rules RETURNING VALUE(rt_rule) TYPE tt_rule.

ENDINTERFACE.