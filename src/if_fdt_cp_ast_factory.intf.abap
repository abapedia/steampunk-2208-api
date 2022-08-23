INTERFACE if_fdt_cp_ast_factory
  PUBLIC.

  METHODS:
    get_function_node RETURNING VALUE(ro_function) TYPE REF TO if_fdt_cp_ast_function_node,
    get_reference_node RETURNING VALUE(ro_reference) TYPE REF TO if_fdt_cp_ast_reference_node,
    get_literal_node RETURNING VALUE(ro_literal) TYPE REF TO if_fdt_cp_ast_literal_node,
    get_complete_tree IMPORTING VALUE(io_obj) TYPE REF TO cl_fdt_cp_ast_simple_node
                      RETURNING VALUE(ro_ast) TYPE REF TO if_fdt_cp_ast_node.

ENDINTERFACE.