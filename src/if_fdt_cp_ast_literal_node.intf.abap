INTERFACE if_fdt_cp_ast_literal_node
  PUBLIC.
  INTERFACES if_fdt_cp_ast_node.
  METHODS:
    get_value RETURNING VALUE(rv_value) TYPE string,
    set_value IMPORTING VALUE(iv_value) TYPE string,
    get_output_data_object_type RETURNING VALUE(rv_data_object_type) TYPE char1,
    set_output_data_object_type IMPORTING VALUE(iv_data_object_type) TYPE char1,
    get_output_business_data_type RETURNING VALUE(rv_business_data_type) TYPE char1,
    set_output_business_data_type IMPORTING VALUE(iv_business_data_type) TYPE char1.
ENDINTERFACE.