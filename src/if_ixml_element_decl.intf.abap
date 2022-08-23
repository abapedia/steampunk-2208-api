
INTERFACE if_ixml_element_decl
  PUBLIC.

  INTERFACES if_ixml_content_particle.

  ALIASES add_content_particle
    FOR if_ixml_content_particle~add_content_particle.
  ALIASES append_child
    FOR if_ixml_content_particle~append_child.
  ALIASES clone
    FOR if_ixml_content_particle~clone.
  ALIASES create_filter_ancestor
    FOR if_ixml_content_particle~create_filter_ancestor.
  ALIASES create_filter_and
    FOR if_ixml_content_particle~create_filter_and.
  ALIASES create_filter_attribute
    FOR if_ixml_content_particle~create_filter_attribute.
  ALIASES create_filter_attribute_ns
    FOR if_ixml_content_particle~create_filter_attribute_ns.
  ALIASES create_filter_name
    FOR if_ixml_content_particle~create_filter_name.
  ALIASES create_filter_name_ns
    FOR if_ixml_content_particle~create_filter_name_ns.
  ALIASES create_filter_node_type
    FOR if_ixml_content_particle~create_filter_node_type.
  ALIASES create_filter_not
    FOR if_ixml_content_particle~create_filter_not.
  ALIASES create_filter_or
    FOR if_ixml_content_particle~create_filter_or.
  ALIASES create_filter_parent
    FOR if_ixml_content_particle~create_filter_parent.
  ALIASES create_inline_iterator
    FOR if_ixml_content_particle~create_inline_iterator.
  ALIASES create_iterator
    FOR if_ixml_content_particle~create_iterator.
  ALIASES create_iterator_filtered
    FOR if_ixml_content_particle~create_iterator_filtered.
  ALIASES create_rev_inline_iterator
    FOR if_ixml_content_particle~create_rev_inline_iterator.
  ALIASES create_rev_iterator
    FOR if_ixml_content_particle~create_rev_iterator.
  ALIASES create_rev_iterator_filtered
    FOR if_ixml_content_particle~create_rev_iterator_filtered.
  ALIASES find_from_gid
    FOR if_ixml_content_particle~find_from_gid.
  ALIASES get_attributes
    FOR if_ixml_content_particle~get_attributes.
  ALIASES get_children
    FOR if_ixml_content_particle~get_children.
  ALIASES get_column
    FOR if_ixml_content_particle~get_column.
  ALIASES get_content_particle
    FOR if_ixml_content_particle~get_content_particle.
  ALIASES get_depth
    FOR if_ixml_content_particle~get_depth.
  ALIASES get_first_child
    FOR if_ixml_content_particle~get_first_child.
  ALIASES get_gid
    FOR if_ixml_content_particle~get_gid.
  ALIASES get_grouping
    FOR if_ixml_content_particle~get_grouping.
  ALIASES get_height
    FOR if_ixml_content_particle~get_height.
  ALIASES get_last_child
    FOR if_ixml_content_particle~get_last_child.
  ALIASES get_line
    FOR if_ixml_content_particle~get_line.
  ALIASES get_name
    FOR if_ixml_content_particle~get_name.
  ALIASES get_namespace
    FOR if_ixml_content_particle~get_namespace.
  ALIASES get_namespace_context
    FOR if_ixml_content_particle~get_namespace_context.
  ALIASES get_namespace_prefix
    FOR if_ixml_content_particle~get_namespace_prefix.
  ALIASES get_namespace_uri
    FOR if_ixml_content_particle~get_namespace_uri.
  ALIASES get_next
    FOR if_ixml_content_particle~get_next.
  ALIASES get_occurrence
    FOR if_ixml_content_particle~get_occurrence.
  ALIASES get_owner_document
    FOR if_ixml_content_particle~get_owner_document.
  ALIASES get_parent
    FOR if_ixml_content_particle~get_parent.
  ALIASES get_prev
    FOR if_ixml_content_particle~get_prev.
  ALIASES get_root
    FOR if_ixml_content_particle~get_root.
  ALIASES get_type
    FOR if_ixml_content_particle~get_type.
  ALIASES get_value
    FOR if_ixml_content_particle~get_value.
  ALIASES has_ancestor
    FOR if_ixml_content_particle~has_ancestor.
  ALIASES insert_child
    FOR if_ixml_content_particle~insert_child.
  ALIASES is_leaf
    FOR if_ixml_content_particle~is_leaf.
  ALIASES is_root
    FOR if_ixml_content_particle~is_root.
  ALIASES num_children
    FOR if_ixml_content_particle~num_children.
  ALIASES num_content_particles
    FOR if_ixml_content_particle~num_content_particles.
  ALIASES query_interface
    FOR if_ixml_content_particle~query_interface.
  ALIASES remove_child
    FOR if_ixml_content_particle~remove_child.
  ALIASES remove_node
    FOR if_ixml_content_particle~remove_node.
  ALIASES render
    FOR if_ixml_content_particle~render.
  ALIASES replace_child
    FOR if_ixml_content_particle~replace_child.
  ALIASES set_grouping
    FOR if_ixml_content_particle~set_grouping.
  ALIASES set_name
    FOR if_ixml_content_particle~set_name.
  ALIASES set_namespace
    FOR if_ixml_content_particle~set_namespace.
  ALIASES set_namespace_prefix
    FOR if_ixml_content_particle~set_namespace_prefix.
  ALIASES set_namespace_uri
    FOR if_ixml_content_particle~set_namespace_uri.
  ALIASES set_occurrence
    FOR if_ixml_content_particle~set_occurrence.
  ALIASES set_value
    FOR if_ixml_content_particle~set_value.

  CONSTANTS co_any TYPE i VALUE 2. "#EC NOTEXT
  CONSTANTS co_children TYPE i VALUE 3. "#EC NOTEXT
  CONSTANTS co_empty TYPE i VALUE 1. "#EC NOTEXT
  CONSTANTS co_mixed TYPE i VALUE 4. "#EC NOTEXT

  METHODS get_content_spec
    RETURNING
      VALUE(rval) TYPE i.
  METHODS set_content_spec
    IMPORTING
      !content_spec TYPE i.
ENDINTERFACE.