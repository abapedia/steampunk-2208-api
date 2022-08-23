INTERFACE if_fdt_cp_ast_reference_node
  PUBLIC.
  INTERFACES if_fdt_cp_ast_node.
  METHODS:
      set_reference IMPORTING VALUE(iv_reference) TYPE string,
      get_reference RETURNING VALUE(rv_reference) TYPE string.
ENDINTERFACE.