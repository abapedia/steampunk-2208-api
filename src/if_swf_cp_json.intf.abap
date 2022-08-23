INTERFACE if_swf_cp_json
  PUBLIC.

  TYPES BEGIN OF uppercase_word.
  TYPES   substring TYPE string.
  TYPES END OF uppercase_word.
  TYPES uppercase_words TYPE TABLE OF uppercase_word WITH DEFAULT KEY.

  TYPES BEGIN OF name_mapping.
  TYPES   abap TYPE abap_compname.
  TYPES   json TYPE string.
  TYPES END OF name_mapping.
  TYPES name_mappings TYPE HASHED TABLE OF name_mapping WITH UNIQUE KEY abap.
  METHODS serialize
      IMPORTING
        data         TYPE data
      RETURNING
        VALUE(result) TYPE string.
  METHODS deserialize
      IMPORTING
        iv_context TYPE string
      EXPORTING
        data       TYPE data.

ENDINTERFACE.