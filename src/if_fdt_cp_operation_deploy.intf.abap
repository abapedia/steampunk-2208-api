INTERFACE if_fdt_cp_operation_deploy
  PUBLIC.
  INTERFACES: if_fdt_cp_validation_operation.

  METHODS:
    get_ruleservice_payload RETURNING VALUE(ro_object) TYPE REF TO if_fdt_cp_admin_data.
ENDINTERFACE.