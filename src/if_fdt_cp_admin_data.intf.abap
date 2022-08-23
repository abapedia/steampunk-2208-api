INTERFACE if_fdt_cp_admin_data
  PUBLIC.

  DATA: mv_id   TYPE if_fdt_cp_external_types=>id READ-ONLY,
        mv_type TYPE if_fdt_cp_external_types=>cpbr_object_type READ-ONLY.

  METHODS get_name
    RETURNING
      VALUE(rv_name) TYPE string.
  METHODS get_label
    RETURNING
      VALUE(rt_label) TYPE if_fdt_cp_external_types=>tt_label.
  METHODS get_description
    RETURNING
      VALUE(rt_description) TYPE if_fdt_cp_external_types=>tt_description.
  METHODS get_project
    RETURNING
      VALUE(rv_project_id) TYPE if_fdt_cp_external_types=>id.
  METHODS set_description
    IMPORTING
      !it_description TYPE if_fdt_cp_external_types=>tt_description.
  METHODS set_label
    IMPORTING
      VALUE(it_label) TYPE if_fdt_cp_external_types=>tt_label.
  METHODS set_name
    IMPORTING
      !iv_name TYPE string.
  METHODS set_project
    IMPORTING
      !iv_project_id TYPE if_fdt_cp_external_types=>id.
  METHODS get_annotations
    RETURNING VALUE(rt_annotations) TYPE if_fdt_cp_external_types=>tt_annotations.
  METHODS set_annotations
    IMPORTING
      !it_annotations TYPE if_fdt_cp_external_types=>tt_annotations.
ENDINTERFACE.