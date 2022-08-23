CLASS cl_fdt_cp_ast_simple_node DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ty_child,
        sequence_number TYPE i,
        node            TYPE REF TO cl_fdt_cp_ast_simple_node,
      END OF ty_child.
    TYPES:
      tt_child TYPE TABLE OF ty_child WITH KEY sequence_number.

    DATA root TYPE abap_bool.
    DATA value TYPE string.
    DATA reference TYPE string.
    DATA function TYPE string.
    DATA children TYPE tt_child.
    DATA business_data_type TYPE char1.
    DATA data_object_type TYPE char1.

    CLASS-METHODS get_instance
      IMPORTING
      !iv_root TYPE abap_bool OPTIONAL
      !iv_value TYPE string OPTIONAL
      !iv_reference TYPE string OPTIONAL
      !iv_function TYPE string OPTIONAL
      !iv_children TYPE tt_child OPTIONAL
      !iv_business_data_type TYPE char1 OPTIONAL
      !iv_data_object_type TYPE char1 OPTIONAL
      !it_children TYPE tt_child OPTIONAL
      RETURNING
      VALUE(ro_instance) TYPE REF TO cl_fdt_cp_ast_simple_node.
ENDCLASS.

CLASS cl_fdt_cp_ast_simple_node IMPLEMENTATION.
ENDCLASS.