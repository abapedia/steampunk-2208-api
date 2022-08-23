
INTERFACE if_ixml_character_data
  PUBLIC.

  INTERFACES if_ixml_node.

  ALIASES append_child
    FOR if_ixml_node~append_child.
  ALIASES clone
    FOR if_ixml_node~clone.
  ALIASES create_filter_ancestor
    FOR if_ixml_node~create_filter_ancestor.
  ALIASES create_filter_and
    FOR if_ixml_node~create_filter_and.
  ALIASES create_filter_attribute
    FOR if_ixml_node~create_filter_attribute.
  ALIASES create_filter_attribute_ns
    FOR if_ixml_node~create_filter_attribute_ns.
  ALIASES create_filter_name
    FOR if_ixml_node~create_filter_name.
  ALIASES create_filter_name_ns
    FOR if_ixml_node~create_filter_name_ns.
  ALIASES create_filter_node_type
    FOR if_ixml_node~create_filter_node_type.
  ALIASES create_filter_not
    FOR if_ixml_node~create_filter_not.
  ALIASES create_filter_or
    FOR if_ixml_node~create_filter_or.
  ALIASES create_filter_parent
    FOR if_ixml_node~create_filter_parent.
  ALIASES create_inline_iterator
    FOR if_ixml_node~create_inline_iterator.
  ALIASES create_iterator
    FOR if_ixml_node~create_iterator.
  ALIASES create_iterator_filtered
    FOR if_ixml_node~create_iterator_filtered.
  ALIASES create_rev_inline_iterator
    FOR if_ixml_node~create_rev_inline_iterator.
  ALIASES create_rev_iterator
    FOR if_ixml_node~create_rev_iterator.
  ALIASES create_rev_iterator_filtered
    FOR if_ixml_node~create_rev_iterator_filtered.
  ALIASES find_from_gid
    FOR if_ixml_node~find_from_gid.
  ALIASES get_attributes
    FOR if_ixml_node~get_attributes.
  ALIASES get_children
    FOR if_ixml_node~get_children.
  ALIASES get_column
    FOR if_ixml_node~get_column.
  ALIASES get_depth
    FOR if_ixml_node~get_depth.
  ALIASES get_first_child
    FOR if_ixml_node~get_first_child.
  ALIASES get_gid
    FOR if_ixml_node~get_gid.
  ALIASES get_height
    FOR if_ixml_node~get_height.
  ALIASES get_last_child
    FOR if_ixml_node~get_last_child.
  ALIASES get_line
    FOR if_ixml_node~get_line.
  ALIASES get_name
    FOR if_ixml_node~get_name.
  ALIASES get_namespace
    FOR if_ixml_node~get_namespace.
  ALIASES get_namespace_context
    FOR if_ixml_node~get_namespace_context.
  ALIASES get_namespace_prefix
    FOR if_ixml_node~get_namespace_prefix.
  ALIASES get_namespace_uri
    FOR if_ixml_node~get_namespace_uri.
  ALIASES get_next
    FOR if_ixml_node~get_next.
  ALIASES get_owner_document
    FOR if_ixml_node~get_owner_document.
  ALIASES get_parent
    FOR if_ixml_node~get_parent.
  ALIASES get_prev
    FOR if_ixml_node~get_prev.
  ALIASES get_root
    FOR if_ixml_node~get_root.
  ALIASES get_type
    FOR if_ixml_node~get_type.
  ALIASES get_value
    FOR if_ixml_node~get_value.
  ALIASES has_ancestor
    FOR if_ixml_node~has_ancestor.
  ALIASES insert_child
    FOR if_ixml_node~insert_child.
  ALIASES is_leaf
    FOR if_ixml_node~is_leaf.
  ALIASES is_root
    FOR if_ixml_node~is_root.
  ALIASES num_children
    FOR if_ixml_node~num_children.
  ALIASES query_interface
    FOR if_ixml_node~query_interface.
  ALIASES remove_child
    FOR if_ixml_node~remove_child.
  ALIASES remove_node
    FOR if_ixml_node~remove_node.
  ALIASES render
    FOR if_ixml_node~render.
  ALIASES replace_child
    FOR if_ixml_node~replace_child.
  ALIASES set_name
    FOR if_ixml_node~set_name.
  ALIASES set_namespace
    FOR if_ixml_node~set_namespace.
  ALIASES set_namespace_prefix
    FOR if_ixml_node~set_namespace_prefix.
  ALIASES set_namespace_uri
    FOR if_ixml_node~set_namespace_uri.
  ALIASES set_value
    FOR if_ixml_node~set_value.

  METHODS append_data
    IMPORTING
      !data TYPE string
    RETURNING
      VALUE(rval) TYPE i.
  METHODS delete_data
    IMPORTING
      !count TYPE i
      !offset TYPE i
    RETURNING
      VALUE(rval) TYPE i.
  METHODS get_data
    RETURNING
      VALUE(rval) TYPE string.
  METHODS get_length
    RETURNING
      VALUE(rval) TYPE i.
  METHODS insert_data
    IMPORTING
      !data TYPE string
      !offset TYPE i
    RETURNING
      VALUE(rval) TYPE i.
  METHODS normalize_data.
  METHODS replace_data
    IMPORTING
      !count TYPE i
      !data TYPE string
      !offset TYPE i
    RETURNING
      VALUE(rval) TYPE i.
  METHODS set_data
    IMPORTING
      !data TYPE string
    RETURNING
      VALUE(rval) TYPE i.
  METHODS substring_data
    IMPORTING
      !count TYPE i
      !offset TYPE i
    RETURNING
      VALUE(rval) TYPE string.
  METHODS ws_only
    RETURNING
      VALUE(rval) TYPE abap_bool.
ENDINTERFACE.