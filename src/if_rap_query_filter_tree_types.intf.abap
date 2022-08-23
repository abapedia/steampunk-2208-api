INTERFACE if_rap_query_filter_tree_types PUBLIC.

  TYPES: BEGIN OF ENUM node_type STRUCTURE node_types,
           identifier,
           value,
           is_null,
           equals,
           matches_pattern,
           less_than,
           greater_than,
           logical_not,
           logical_and,
           logical_or,
         END OF ENUM node_type STRUCTURE node_types.

  TYPES: node TYPE REF TO if_rap_query_filter_tree_node,
         ordered_children TYPE STANDARD TABLE OF node WITH EMPTY KEY.

ENDINTERFACE.