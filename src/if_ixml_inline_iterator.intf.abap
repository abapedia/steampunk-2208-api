
INTERFACE if_ixml_inline_iterator
  PUBLIC.

  INTERFACES if_ixml_unknown.

  ALIASES query_interface
    FOR if_ixml_unknown~query_interface.

  METHODS advance
    RETURNING
      VALUE(rval) TYPE i.
  METHODS append_child
    IMPORTING
      !p_child TYPE REF TO if_ixml_node
      !_reserved_nocheck TYPE abap_bool
    RETURNING
      VALUE(rval) TYPE i.
  METHODS find_from_gid
    IMPORTING
      !depth TYPE i
      !gid TYPE i
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS get_attributes
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_named_node_map.
  METHODS get_children
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_list.
  METHODS get_current
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS get_depth
    RETURNING
      VALUE(rval) TYPE i.
  METHODS get_filter
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.
  METHODS get_first_child
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS get_gid
    RETURNING
      VALUE(rval) TYPE i.
  METHODS get_height
    RETURNING
      VALUE(rval) TYPE i.
  METHODS get_last_child
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS get_name
    RETURNING
      VALUE(rval) TYPE string.
  METHODS get_namespace_context
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_namespace_context.
  METHODS get_namespace_prefix
    RETURNING
      VALUE(rval) TYPE string.
  METHODS get_namespace_uri
    RETURNING
      VALUE(rval) TYPE string.
  METHODS get_next
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS get_owner_document
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_document.
  METHODS get_parent
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS get_prev
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS get_root
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS get_type
    RETURNING
      VALUE(rval) TYPE i.
  METHODS get_value
    RETURNING
      VALUE(rval) TYPE string.
  METHODS has_ancestor
    IMPORTING
      !p_ancestor TYPE REF TO if_ixml_node
    RETURNING
      VALUE(rval) TYPE abap_bool.
  METHODS insert_child
    IMPORTING
      !p_before TYPE REF TO if_ixml_node
      !p_child TYPE REF TO if_ixml_node
    RETURNING
      VALUE(rval) TYPE i.
  METHODS is_leaf
    RETURNING
      VALUE(rval) TYPE abap_bool.
  METHODS is_root
    RETURNING
      VALUE(rval) TYPE abap_bool.
  METHODS num_children
    RETURNING
      VALUE(rval) TYPE i.
  METHODS remove_child
    IMPORTING
      !p_child TYPE REF TO if_ixml_node
    RETURNING
      VALUE(rval) TYPE i.
  METHODS remove_node.
  METHODS replace_child
    IMPORTING
      !p_new_child TYPE REF TO if_ixml_node
      !p_old_child TYPE REF TO if_ixml_node
    RETURNING
      VALUE(rval) TYPE i.
  METHODS reset.
  METHODS set_filter
    IMPORTING
      !filter TYPE REF TO if_ixml_node_filter
    RETURNING
      VALUE(rval) TYPE i.
  METHODS set_name
    IMPORTING
      !name TYPE string
    RETURNING
      VALUE(rval) TYPE i.
  METHODS set_namespace_prefix
    IMPORTING
      !prefix TYPE string
    RETURNING
      VALUE(rval) TYPE i.
  METHODS set_namespace_uri
    IMPORTING
      !uri TYPE string
    RETURNING
      VALUE(rval) TYPE i.
  METHODS set_value
    IMPORTING
      !value TYPE string
    RETURNING
      VALUE(rval) TYPE i.
ENDINTERFACE.