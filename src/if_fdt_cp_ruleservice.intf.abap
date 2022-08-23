INTERFACE if_fdt_cp_ruleservice
  PUBLIC.

  INTERFACES if_fdt_cp_admin_data.
  INTERFACES if_fdt_cp_actions.

  CONSTANTS:
    BEGIN OF gcs_annotations,
      BEGIN OF runtime,
        abaponhana   TYPE string VALUE 'com.sap.abaponhana',
        hanaadvanced TYPE string VALUE 'com.sap.hana.advanced',
      END OF runtime,
      BEGIN OF hana_advanced,
        source_code_container TYPE string VALUE 'com.sap.hana.advanced.ruleservice.source.container',
        source_code_namespace TYPE string VALUE 'com.sap.hana.advanced.ruleservice.source.namespace',
      END OF hana_advanced,
    END OF gcs_annotations.

  METHODS set_result_data_object
    IMPORTING iv_result_data_object_id TYPE string.

  METHODS get_result_data_object
    RETURNING VALUE(rv_result_data_object_id) TYPE string.

  METHODS set_input_data_objects
    IMPORTING it_input_data_objects TYPE if_fdt_cp_external_types=>tt_object_id.

  METHODS get_input_data_objects
    RETURNING VALUE(rt_input_data_objects) TYPE if_fdt_cp_external_types=>tt_object_id.

  METHODS set_reference_data_objects
    IMPORTING it_reference_data_objects TYPE if_fdt_cp_external_types=>tt_object_id.

  METHODS get_reference_data_objects
    RETURNING VALUE(rt_reference_data_objects) TYPE if_fdt_cp_external_types=>tt_object_id.

ENDINTERFACE.