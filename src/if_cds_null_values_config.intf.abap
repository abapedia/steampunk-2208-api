INTERFACE if_cds_null_values_config
  PUBLIC.

  TYPES:
     ty_element_name TYPE string.
  TYPES:
    ty_element_names TYPE SORTED TABLE OF ty_element_name WITH UNIQUE KEY table_line.

  METHODS:
    get_element_names
      RETURNING
        VALUE(r_names) TYPE ty_element_names,
    set_element_names
      IMPORTING
        i_names TYPE ty_element_names,
    delete_element_name
      IMPORTING
        i_name TYPE ty_element_name,
    add_element_name
      IMPORTING
        VALUE(i_name) TYPE ty_element_name.

ENDINTERFACE.