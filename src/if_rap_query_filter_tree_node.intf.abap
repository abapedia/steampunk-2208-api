INTERFACE if_rap_query_filter_tree_node PUBLIC.
  METHODS get_children RETURNING VALUE(children) TYPE if_rap_query_filter_tree_types=>ordered_children.
  METHODS get_type RETURNING VALUE(type) TYPE if_rap_query_filter_tree_types=>node_type.
  METHODS get_value RETURNING VALUE(value) TYPE REF TO data.

ENDINTERFACE.