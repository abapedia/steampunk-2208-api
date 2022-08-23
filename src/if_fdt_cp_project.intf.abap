INTERFACE if_fdt_cp_project
  PUBLIC.
  INTERFACES:
    if_fdt_cp_admin_data,
    if_fdt_cp_actions.
  TYPES:
    BEGIN OF ty_project_interface,
      id   TYPE if_fdt_cp_external_types=>id,
      name      TYPE string,
      object_id TYPE string_table,
    END OF ty_project_interface,
    tt_project_interface TYPE TABLE OF ty_project_interface WITH DEFAULT KEY,

    BEGIN OF ty_included_interface,
      project      TYPE if_fdt_cp_external_types=>id,
      interface_id TYPE if_fdt_cp_external_types=>id,
      revision     TYPE string,
    END OF ty_included_interface,
    tt_included_interface TYPE TABLE OF ty_included_interface WITH DEFAULT KEY.

  METHODS:
    set_interface IMPORTING VALUE(it_interface) TYPE tt_project_interface,
    get_interface RETURNING VALUE(rt_interface) TYPE tt_project_interface,
    set_included_interface IMPORTING VALUE(it_included_interface) TYPE tt_included_interface,
    get_included_interface RETURNING VALUE(rt_included_interface) TYPE tt_included_interface.

ENDINTERFACE.