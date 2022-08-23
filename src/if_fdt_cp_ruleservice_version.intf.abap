INTERFACE if_fdt_cp_ruleservice_version
  PUBLIC.

  INTERFACES: if_fdt_cp_version_generic.

  TYPES:
    BEGIN OF ty_header_information,
      id              TYPE char18,
      revision        TYPE string,
      description     TYPE string,
      parent_id        TYPE string,
      project         TYPE string,
      rule_service_id TYPE string,
    END OF ty_header_information.

  METHODS:
    get_header_information RETURNING VALUE(rs_header) TYPE ty_header_information.

  ALIASES:
    get_projects FOR if_fdt_cp_version_generic~get_projects,
    get_dataobjects FOR if_fdt_cp_version_generic~get_data_objects,
    get_ruleservices FOR if_fdt_cp_version_generic~get_ruleservices,
    get_rules FOR if_fdt_cp_version_generic~get_rules,
    get_rulesets FOR if_fdt_cp_version_generic~get_rulesets.

ENDINTERFACE.