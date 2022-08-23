INTERFACE if_xco_json_transformation PUBLIC.
  METHODS:
    get_visitor
      IMPORTING
        io_tree_builder   TYPE REF TO if_xco_json_tree_builder
      RETURNING
        VALUE(ro_visitor) TYPE REF TO if_xco_json_tree_visitor.
ENDINTERFACE.