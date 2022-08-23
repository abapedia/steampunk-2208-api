INTERFACE if_sxml_nsuri_helper
  PUBLIC.

  METHODS get_nsuri_by_prefix
    IMPORTING
      !prefix      TYPE string
    RETURNING
      VALUE(nsuri) TYPE string.
  METHODS get_prefix_by_nsuri
    IMPORTING
      !nsuri        TYPE string
    RETURNING
      VALUE(prefix) TYPE string.
  METHODS get_nsbindings
    RETURNING
      VALUE(nsbindings) TYPE if_sxml_named=>nsbindings.
  METHODS get_path
    RETURNING
      VALUE(path) TYPE if_sxml_named=>path.

ENDINTERFACE.