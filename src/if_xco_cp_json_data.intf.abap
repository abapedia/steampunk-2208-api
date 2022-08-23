INTERFACE if_xco_cp_json_data PUBLIC.
  METHODS:
    apply
      IMPORTING
        it_transformations TYPE sxco_t_json_transformations
      RETURNING
        VALUE(ro_data)     TYPE REF TO if_xco_cp_json_data,

    traverse
      IMPORTING
        io_visitor TYPE REF TO if_xco_json_tree_visitor,

    write_to
      IMPORTING
        ia_data TYPE REF TO data,

    to_string
      RETURNING
        VALUE(rv_string) TYPE string.
ENDINTERFACE.