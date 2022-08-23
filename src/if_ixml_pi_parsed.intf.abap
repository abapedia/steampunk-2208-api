
INTERFACE if_ixml_pi_parsed
  PUBLIC.

  INTERFACES if_ixml_pi.

  ALIASES append_child
    FOR if_ixml_pi~append_child.
  ALIASES clone
    FOR if_ixml_pi~clone.
  ALIASES create_filter_ancestor
    FOR if_ixml_pi~create_filter_ancestor.
  ALIASES create_filter_and
    FOR if_ixml_pi~create_filter_and.
  ALIASES create_filter_attribute
    FOR if_ixml_pi~create_filter_attribute.
  ALIASES create_filter_attribute_ns
    FOR if_ixml_pi~create_filter_attribute_ns.
  ALIASES create_filter_name
    FOR if_ixml_pi~create_filter_name.
  ALIASES create_filter_name_ns
    FOR if_ixml_pi~create_filter_name_ns.
  ALIASES create_filter_node_type
    FOR if_ixml_pi~create_filter_node_type.
  ALIASES create_filter_not
    FOR if_ixml_pi~create_filter_not.
  ALIASES create_filter_or
    FOR if_ixml_pi~create_filter_or.
  ALIASES create_filter_parent
    FOR if_ixml_pi~create_filter_parent.
  ALIASES create_inline_iterator
    FOR if_ixml_pi~create_inline_iterator.
  ALIASES create_iterator
    FOR if_ixml_pi~create_iterator.
  ALIASES create_iterator_filtered
    FOR if_ixml_pi~create_iterator_filtered.
  ALIASES create_rev_inline_iterator
    FOR if_ixml_pi~create_rev_inline_iterator.
  ALIASES create_rev_iterator
    FOR if_ixml_pi~create_rev_iterator.
  ALIASES create_rev_iterator_filtered
    FOR if_ixml_pi~create_rev_iterator_filtered.
  ALIASES find_from_gid
    FOR if_ixml_pi~find_from_gid.
  ALIASES get_attributes
    FOR if_ixml_pi~get_attributes.
  ALIASES get_children
    FOR if_ixml_pi~get_children.
  ALIASES get_column
    FOR if_ixml_pi~get_column.
  ALIASES get_depth
    FOR if_ixml_pi~get_depth.
  ALIASES get_first_child
    FOR if_ixml_pi~get_first_child.
  ALIASES get_gid
    FOR if_ixml_pi~get_gid.
  ALIASES get_height
    FOR if_ixml_pi~get_height.
  ALIASES get_last_child
    FOR if_ixml_pi~get_last_child.
  ALIASES get_line
    FOR if_ixml_pi~get_line.
  ALIASES get_name
    FOR if_ixml_pi~get_name.
  ALIASES get_namespace
    FOR if_ixml_pi~get_namespace.
  ALIASES get_namespace_context
    FOR if_ixml_pi~get_namespace_context.
  ALIASES get_namespace_prefix
    FOR if_ixml_pi~get_namespace_prefix.
  ALIASES get_namespace_uri
    FOR if_ixml_pi~get_namespace_uri.
  ALIASES get_next
    FOR if_ixml_pi~get_next.
  ALIASES get_owner_document
    FOR if_ixml_pi~get_owner_document.
  ALIASES get_parent
    FOR if_ixml_pi~get_parent.
  ALIASES get_prev
    FOR if_ixml_pi~get_prev.
  ALIASES get_root
    FOR if_ixml_pi~get_root.
  ALIASES get_target
    FOR if_ixml_pi~get_target.
  ALIASES get_type
    FOR if_ixml_pi~get_type.
  ALIASES get_value
    FOR if_ixml_pi~get_value.
  ALIASES has_ancestor
    FOR if_ixml_pi~has_ancestor.
  ALIASES insert_child
    FOR if_ixml_pi~insert_child.
  ALIASES is_leaf
    FOR if_ixml_pi~is_leaf.
  ALIASES is_root
    FOR if_ixml_pi~is_root.
  ALIASES num_children
    FOR if_ixml_pi~num_children.
  ALIASES query_interface
    FOR if_ixml_pi~query_interface.
  ALIASES remove_child
    FOR if_ixml_pi~remove_child.
  ALIASES remove_node
    FOR if_ixml_pi~remove_node.
  ALIASES render
    FOR if_ixml_pi~render.
  ALIASES replace_child
    FOR if_ixml_pi~replace_child.
  ALIASES set_name
    FOR if_ixml_pi~set_name.
  ALIASES set_namespace
    FOR if_ixml_pi~set_namespace.
  ALIASES set_namespace_prefix
    FOR if_ixml_pi~set_namespace_prefix.
  ALIASES set_namespace_uri
    FOR if_ixml_pi~set_namespace_uri.
  ALIASES set_value
    FOR if_ixml_pi~set_value.

  METHODS get_attribute
    IMPORTING
      !name TYPE string
    RETURNING
      VALUE(rval) TYPE string.
  METHODS get_attribute_node
    IMPORTING
      !name TYPE string
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_attribute.
  METHODS remove_attribute
    IMPORTING
      !name TYPE string
    RETURNING
      VALUE(rval) TYPE i.
  METHODS remove_attribute_node
    IMPORTING
      !old_attr TYPE REF TO if_ixml_attribute
    RETURNING
      VALUE(rval) TYPE i.
  METHODS set_attribute
    IMPORTING
      !name TYPE string
      !value TYPE string DEFAULT ''
    RETURNING
      VALUE(rval) TYPE i.
  METHODS set_attribute_node
    IMPORTING
      !new_attr TYPE REF TO if_ixml_attribute
    RETURNING
      VALUE(rval) TYPE i.
ENDINTERFACE.