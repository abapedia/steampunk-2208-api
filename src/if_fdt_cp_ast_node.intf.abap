INTERFACE if_fdt_cp_ast_node
  PUBLIC.
  METHODS:
    get_root RETURNING VALUE(rv_root) TYPE abap_bool,
    set_root IMPORTING VALUE(iv_root) TYPE abap_bool,
    get_id RETURNING VALUE(rv_id) TYPE string,
    get_type RETURNING VALUE(rv_type) TYPE if_fdt_cp_external_types=>ast_node.
ENDINTERFACE.