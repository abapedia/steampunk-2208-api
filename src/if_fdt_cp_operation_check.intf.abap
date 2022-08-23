INTERFACE if_fdt_cp_operation_check
  PUBLIC.

  INTERFACES if_fdt_cp_validation_operation.

  METHODS get_main_resource
    RETURNING
      VALUE(ro_object) TYPE REF TO if_fdt_cp_admin_data
    RAISING
      cx_fdt_cp_utility_exceptions.
  METHODS get_sub_resource
    RETURNING
      VALUE(ro_object) TYPE REF TO if_fdt_cp_admin_data
    RAISING
      cx_fdt_cp_utility_exceptions.
ENDINTERFACE.