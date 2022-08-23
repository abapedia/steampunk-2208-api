INTERFACE if_xco_json_tree_builder PUBLIC.
  METHODS:
    begin_object,

    end_object,

    begin_array,

    end_array,

    add_member
      IMPORTING
        iv_name TYPE clike,

    add_string
      IMPORTING
        iv_value TYPE clike,

    add_number
      IMPORTING
        iv_value TYPE numeric,

    add_boolean
      IMPORTING
        iv_value TYPE abap_bool,

    add_null.
ENDINTERFACE.