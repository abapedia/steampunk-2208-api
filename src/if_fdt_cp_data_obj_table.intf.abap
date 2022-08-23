INTERFACE if_fdt_cp_data_obj_table
  PUBLIC.
  INTERFACES:
    if_fdt_cp_admin_data,
    if_fdt_cp_data_object.

  TYPES:
    BEGIN OF ty_table_paramater,
      name        TYPE string,
      object_id   TYPE if_fdt_cp_external_types=>id,
      annotations TYPE if_fdt_cp_external_types=>tt_annotations,
    END OF ty_table_paramater,
    tt_table_paramater TYPE TABLE OF ty_table_paramater WITH KEY name.

  METHODS:
    set_linetype_id IMPORTING VALUE(iv_linetype_id) TYPE if_fdt_cp_external_types=>id,
    get_linetype_id RETURNING VALUE(rv_linetype_id) TYPE if_fdt_cp_external_types=>id,
    set_parameters IMPORTING VALUE(it_parameters) TYPE tt_table_paramater,
    get_parameters RETURNING VALUE(rt_parameters) TYPE tt_table_paramater.

ENDINTERFACE.