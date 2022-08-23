INTERFACE if_fdt_cp_data_object
  PUBLIC.

  INTERFACES:
    if_fdt_cp_admin_data,
    if_fdt_cp_actions.

  CONSTANTS:
    BEGIN OF gcs_data_object,
      element   TYPE char1 VALUE 'E',
      structure TYPE char1 VALUE 'S',
      table     TYPE char1 VALUE 'T',
    END OF gcs_data_object.

  METHODS:
    get_data_object_type RETURNING VALUE(rv_data_object_type) TYPE char1,
    set_extensible_flag IMPORTING VALUE(iv_extension_flag) TYPE abap_bool,
    get_extensible_flag RETURNING VALUE(rv_extension_flag) TYPE abap_bool,
    set_extension       IMPORTING VALUE(iv_extension) TYPE if_fdt_cp_external_types=>id,
    get_extension       RETURNING VALUE(rv_extension) TYPE if_fdt_cp_external_types=>id.

ENDINTERFACE.