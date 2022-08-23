INTERFACE if_cds_test_data

  PUBLIC.

  METHODS:
    set_data
      IMPORTING
        i_data TYPE ANY TABLE,
    get_data
      EXPORTING
        VALUE(r_data) TYPE ANY TABLE,
    for_parameters
      IMPORTING
        i_parameter_values TYPE if_cds_parameter_values_config=>ty_parameter_value_pairs
      RETURNING
        VALUE(r_test_data) TYPE REF TO if_cds_test_data,
    set_client
      IMPORTING
        client             TYPE mandt
      RETURNING
        VALUE(r_test_data) TYPE REF TO if_cds_test_data,
    get_client
      RETURNING
        VALUE(client) TYPE mandt,
    set_null_values
      IMPORTING
        i_null_values      TYPE  if_cds_null_values_config=>ty_element_names
      RETURNING
        VALUE(r_test_data) TYPE REF TO if_cds_test_data,
    get_null_values_config
      RETURNING
        VALUE(r_config) TYPE REF TO if_cds_null_values_config,
    set_null_values_config
      IMPORTING
        i_config           TYPE REF TO if_cds_null_values_config
      RETURNING
        VALUE(r_test_data) TYPE REF TO if_cds_test_data,
    get_parameter_values_config
      RETURNING
        VALUE(r_config) TYPE REF TO if_cds_parameter_values_config,
    set_parameter_values_config
      IMPORTING
        i_config TYPE REF TO if_cds_parameter_values_config.

ENDINTERFACE.