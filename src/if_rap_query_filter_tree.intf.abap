INTERFACE if_rap_query_filter_tree PUBLIC.
  METHODS get_root_node RETURNING VALUE(root_node) TYPE REF TO if_rap_query_filter_tree_node.

ENDINTERFACE.