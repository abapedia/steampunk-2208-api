INTERFACE if_xco_json_tree_visitor PUBLIC.
  METHODS:
    on_start DEFAULT IGNORE,

    on_end DEFAULT IGNORE,

    enter_object DEFAULT IGNORE,

    leave_object DEFAULT IGNORE,

    enter_array DEFAULT IGNORE,

    leave_array DEFAULT IGNORE,

    visit_member DEFAULT IGNORE
      IMPORTING
        iv_name TYPE string,

    visit_string DEFAULT IGNORE
      IMPORTING
        iv_value TYPE string,

    visit_number DEFAULT IGNORE
      IMPORTING
        iv_value TYPE numeric,

    visit_boolean DEFAULT IGNORE
      IMPORTING
        iv_value TYPE abap_bool,

    visit_null DEFAULT IGNORE.
ENDINTERFACE.