INTERFACE if_osql_param_values_config
  PUBLIC.

  TYPES: BEGIN OF ty_parameter_value_pair,
           parameter_name  TYPE string,
           parameter_value TYPE string,
         END OF ty_parameter_value_pair.

  TYPES:
    ty_parameter_value_pairs TYPE SORTED TABLE OF ty_parameter_value_pair WITH UNIQUE KEY parameter_name.

  METHODS:
    get_parameter_values
      RETURNING
        VALUE(r_vals) TYPE ty_parameter_value_pairs,
    set_parameter_values
      IMPORTING
        i_vals TYPE ty_parameter_value_pairs,
    add_parameter_value
      IMPORTING
        VALUE(i_val) TYPE ty_parameter_value_pair,
    modify_parameter_value
      IMPORTING
        VALUE(i_new_val) TYPE ty_parameter_value_pair.

ENDINTERFACE.