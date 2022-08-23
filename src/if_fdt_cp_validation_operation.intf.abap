INTERFACE if_fdt_cp_validation_operation
  PUBLIC.

  TYPES:
    BEGIN OF ENUM operation_type,
      save,
      delete,
      check,
      activate,
      deploy,
    END OF ENUM operation_type.
  TYPES:
    BEGIN OF ENUM content_stage_type,
      draft,
      working_set,
      version,
    END OF ENUM content_stage_type.
  TYPES:
    BEGIN OF ty_object_endpoints,
      resource_url     TYPE string,
      sub_resource_url TYPE string,
    END OF ty_object_endpoints.
  TYPES:
    BEGIN OF ty_operation_details,
      id               TYPE string,
      type             TYPE string,
      status           TYPE string,
      percent_complete TYPE i,
    END OF ty_operation_details.

  DATA mv_operation_id TYPE string READ-ONLY.
  DATA mv_content_id TYPE string READ-ONLY.
  DATA mv_step_id TYPE string READ-ONLY.
  DATA mv_resource_type TYPE if_fdt_cp_external_types=>cpbr_object_type READ-ONLY.
  DATA mv_sub_resource_type TYPE if_fdt_cp_external_types=>cpbr_object_type READ-ONLY.
  DATA mv_id TYPE if_fdt_cp_external_types=>id READ-ONLY.
  DATA mv_project_id TYPE if_fdt_cp_external_types=>id READ-ONLY.
  DATA mv_version TYPE string READ-ONLY.
  DATA mv_name TYPE string READ-ONLY.
  DATA mv_operation TYPE operation_type READ-ONLY.
  DATA mv_stage TYPE content_stage_type READ-ONLY.

  METHODS get_operation_status
    EXPORTING
      !es_operation_details TYPE ty_operation_details
    RAISING
      cx_fdt_cp_utility_exceptions.
ENDINTERFACE.