INTERFACE if_sxml_node
  PUBLIC.

  TYPES node_type TYPE i.

  CONSTANTS co_nt_initial TYPE node_type VALUE 0.           "#EC NOTEXT
  CONSTANTS co_nt_element_open TYPE node_type VALUE 1.      "#EC NOTEXT
  CONSTANTS co_nt_element_close TYPE node_type VALUE 2.     "#EC NOTEXT
  CONSTANTS co_nt_value TYPE node_type VALUE 4.             "#EC NOTEXT
  CONSTANTS co_nt_attribute TYPE node_type VALUE 32.        "#EC NOTEXT
  CONSTANTS co_nt_final TYPE node_type VALUE 128.           "#EC NOTEXT

  DATA type TYPE node_type READ-ONLY.

ENDINTERFACE.