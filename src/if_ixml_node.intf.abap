
INTERFACE if_ixml_node
  PUBLIC.

  INTERFACES if_ixml_unknown.

  ALIASES query_interface
    FOR if_ixml_unknown~query_interface.

  CONSTANTS co_node_attribute TYPE i VALUE 8. "#EC NOTEXT
  CONSTANTS co_node_attribute_decl TYPE i VALUE 2097152. "#EC NOTEXT
  CONSTANTS co_node_att_list_decl TYPE i VALUE 1048576. "#EC NOTEXT
  CONSTANTS co_node_cdata_section TYPE i VALUE 32. "#EC NOTEXT
  CONSTANTS co_node_comment TYPE i VALUE 512. "#EC NOTEXT
  CONSTANTS co_node_cond_dtd_section TYPE i VALUE 131072. "#EC NOTEXT
  CONSTANTS co_node_content_particle TYPE i VALUE 524288. "#EC NOTEXT
  CONSTANTS co_node_document TYPE i VALUE 1. "#EC NOTEXT
  CONSTANTS co_node_document_fragment TYPE i VALUE 2. "#EC NOTEXT
  CONSTANTS co_node_document_type TYPE i VALUE 65536. "#EC NOTEXT
  CONSTANTS co_node_element TYPE i VALUE 4. "#EC NOTEXT
  CONSTANTS co_node_element_decl TYPE i VALUE 262144. "#EC NOTEXT
  CONSTANTS co_node_entity_decl TYPE i VALUE 4194304. "#EC NOTEXT
  CONSTANTS co_node_entity_ref TYPE i VALUE 64. "#EC NOTEXT
  CONSTANTS co_node_namespace_decl TYPE i VALUE 16777216. "#EC NOTEXT
  CONSTANTS co_node_notations_decl TYPE i VALUE 8388608. "#EC NOTEXT
  CONSTANTS co_node_pi_parsed TYPE i VALUE 256. "#EC NOTEXT
  CONSTANTS co_node_pi_unparsed TYPE i VALUE 128. "#EC NOTEXT
  CONSTANTS co_node_text TYPE i VALUE 16. "#EC NOTEXT
  CONSTANTS co_node_xxx TYPE i VALUE 0. "#EC NOTEXT

  METHODS append_child
    IMPORTING
      !new_child TYPE REF TO if_ixml_node
    RETURNING
      VALUE(rval) TYPE i.
  METHODS clone
    IMPORTING
      !depth TYPE i DEFAULT -1
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS create_filter_ancestor
    IMPORTING
      !filter_ancestor TYPE REF TO if_ixml_node_filter
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.
  METHODS create_filter_and
    IMPORTING
      !filter1 TYPE REF TO if_ixml_node_filter
      !filter2 TYPE REF TO if_ixml_node_filter
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.
  METHODS create_filter_attribute
    IMPORTING
      !name TYPE string
      !namespace TYPE string DEFAULT ''
      !value TYPE string DEFAULT ''
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.
  METHODS create_filter_attribute_ns
    IMPORTING
      !name TYPE string
      !uri TYPE string DEFAULT ''
      !value TYPE string DEFAULT ''
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.
  METHODS create_filter_name
    IMPORTING
      !name TYPE string
      !namespace TYPE string DEFAULT ''
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.
  METHODS create_filter_name_ns
    IMPORTING
      !name TYPE string
      !namespace TYPE string DEFAULT ''
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.
  METHODS create_filter_node_type
    IMPORTING
      !node_types TYPE i
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.
  METHODS create_filter_not
    IMPORTING
      !filter_not TYPE REF TO if_ixml_node_filter
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.
  METHODS create_filter_or
    IMPORTING
      !filter1 TYPE REF TO if_ixml_node_filter
      !filter2 TYPE REF TO if_ixml_node_filter
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.
  METHODS create_filter_parent
    IMPORTING
      !filter_parent TYPE REF TO if_ixml_node_filter
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.
  METHODS create_inline_iterator
    IMPORTING
      !depth TYPE i DEFAULT 0
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_inline_iterator.
  METHODS create_iterator
    IMPORTING
      !depth TYPE i DEFAULT 0
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_iterator.
  METHODS create_iterator_filtered
    IMPORTING
      !depth TYPE i DEFAULT 0
      !filter TYPE REF TO if_ixml_node_filter
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_iterator.
  METHODS create_rev_inline_iterator
    IMPORTING
      !depth TYPE i DEFAULT 0
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_inline_iterator.
  METHODS create_rev_iterator
    IMPORTING
      !depth TYPE i DEFAULT 0
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_iterator.
  METHODS create_rev_iterator_filtered
    IMPORTING
      !depth TYPE i DEFAULT 0
      !filter TYPE REF TO if_ixml_node_filter
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_iterator.
  METHODS find_from_gid
    IMPORTING
      !depth TYPE i DEFAULT 0
      !gid TYPE i
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS get_attributes
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_named_node_map.
  METHODS get_children
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_list.
  METHODS get_column
    RETURNING
      VALUE(rval) TYPE i.
  METHODS get_depth
    RETURNING
      VALUE(rval) TYPE i.
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
  METHODS get_line
    RETURNING
      VALUE(rval) TYPE i.
  METHODS get_name
    RETURNING
      VALUE(rval) TYPE string.
  METHODS get_namespace
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
      !ancestor TYPE REF TO if_ixml_node
    RETURNING
      VALUE(rval) TYPE abap_bool.
  METHODS insert_child
    IMPORTING
      !new_child TYPE REF TO if_ixml_node
      !ref_child TYPE REF TO if_ixml_node
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
      !old_child TYPE REF TO if_ixml_node
    RETURNING
      VALUE(rval) TYPE i.
  METHODS remove_node.

  METHODS replace_child
    IMPORTING
      !new_child TYPE REF TO if_ixml_node
      !old_child TYPE REF TO if_ixml_node
    RETURNING
      VALUE(rval) TYPE i.
  METHODS set_name
    IMPORTING
      !name TYPE string
    RETURNING
      VALUE(rval) TYPE i.
  METHODS set_namespace
    IMPORTING
      !namespace TYPE string
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