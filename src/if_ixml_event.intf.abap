
INTERFACE if_ixml_event
  PUBLIC.

  INTERFACES if_ixml_unknown.

  ALIASES query_interface
    FOR if_ixml_unknown~query_interface.

  CONSTANTS co_event_text_pre TYPE i VALUE 128. "#EC NOTEXT
  CONSTANTS co_event_text_post TYPE i VALUE 256. "#EC NOTEXT
  CONSTANTS co_event_pi_unparsed_pre TYPE i VALUE 2048. "#EC NOTEXT
  CONSTANTS co_event_pi_unparsed_post TYPE i VALUE 4096. "#EC NOTEXT
  CONSTANTS co_event_pi_parsed_pre TYPE i VALUE 8192. "#EC NOTEXT
  CONSTANTS co_event_pi_parsed_post TYPE i VALUE 16384. "#EC NOTEXT
  CONSTANTS co_event_notation_decl_pre TYPE i VALUE 536870912. "#EC NOTEXT
  CONSTANTS co_event_notation_decl_post TYPE i VALUE 1073741824. "#EC NOTEXT
  CONSTANTS co_event_entity_ref_pre TYPE i VALUE 524288. "#EC NOTEXT
  CONSTANTS co_event_entity_ref_post TYPE i VALUE 1048576. "#EC NOTEXT
  CONSTANTS co_event_entity_decl_pre TYPE i VALUE 134217728. "#EC NOTEXT
  CONSTANTS co_event_entity_decl_post TYPE i VALUE 268435456. "#EC NOTEXT
  CONSTANTS co_event_element_pre2 TYPE i VALUE 32. "#EC NOTEXT
  CONSTANTS co_event_element_pre TYPE i VALUE 16. "#EC NOTEXT
  CONSTANTS co_event_element_post TYPE i VALUE 64. "#EC NOTEXT
  CONSTANTS co_event_element_decl_pre TYPE i VALUE 8388608. "#EC NOTEXT
  CONSTANTS co_event_element_decl_post TYPE i VALUE 16777216. "#EC NOTEXT
  CONSTANTS co_event_document_type_pre TYPE i VALUE 131072. "#EC NOTEXT
  CONSTANTS co_event_document_type_post TYPE i VALUE 262144. "#EC NOTEXT
  CONSTANTS co_event_document_pre TYPE i VALUE 1. "#EC NOTEXT
  CONSTANTS co_event_document_post TYPE i VALUE 2. "#EC NOTEXT
  CONSTANTS co_event_cond_dtd_section_pre TYPE i VALUE 2097152. "#EC NOTEXT
  CONSTANTS co_event_cond_dtd_section_post TYPE i VALUE 4194304. "#EC NOTEXT
  CONSTANTS co_event_comment_pre TYPE i VALUE 512. "#EC NOTEXT
  CONSTANTS co_event_comment_post TYPE i VALUE 1024. "#EC NOTEXT
  CONSTANTS co_event_cdata_section_pre TYPE i VALUE 32768. "#EC NOTEXT
  CONSTANTS co_event_cdata_section_post TYPE i VALUE 65536. "#EC NOTEXT
  CONSTANTS co_event_att_list_decl_pre TYPE i VALUE 33554432. "#EC NOTEXT
  CONSTANTS co_event_att_list_decl_post TYPE i VALUE 67108864. "#EC NOTEXT
  CONSTANTS co_event_attribute_pre TYPE i VALUE 4. "#EC NOTEXT
  CONSTANTS co_event_attribute_post TYPE i VALUE 8. "#EC NOTEXT
  CONSTANTS co_event_attribute_decl_pre TYPE i VALUE 33554432. "#EC NOTEXT
  CONSTANTS co_event_attribute_decl_post TYPE i VALUE 67108864. "#EC NOTEXT

  METHODS get_attributes
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_named_node_map.
  METHODS get_name
    RETURNING
      VALUE(rval) TYPE string.
  METHODS get_namespace
    RETURNING
      VALUE(rval) TYPE string.
  METHODS get_namespace_prefix
    RETURNING
      VALUE(rval) TYPE string.
  METHODS get_node
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS get_parent
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS get_type
    RETURNING
      VALUE(rval) TYPE i.
  METHODS get_value
    RETURNING
      VALUE(rval) TYPE string.
ENDINTERFACE.