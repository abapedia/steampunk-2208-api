INTERFACE if_sxml
  PUBLIC.

  TYPES xml_stream_type TYPE i.

  CONSTANTS co_xt_xml10 TYPE xml_stream_type VALUE 1.       "#EC NOTEXT
  CONSTANTS co_xt_binary TYPE xml_stream_type VALUE 2.      "#EC NOTEXT
  CONSTANTS co_xt_xop TYPE xml_stream_type VALUE 3.         "#EC NOTEXT
  CONSTANTS co_xt_json TYPE xml_stream_type VALUE 4.        "#EC NOTEXT

  DATA type TYPE xml_stream_type.

ENDINTERFACE.