INTERFACE if_osql_double
  PUBLIC.
  TYPES: l_tabtype TYPE c.

  CONSTANTS:
    BEGIN OF co_datasource_type,
      entity         TYPE l_tabtype VALUE 'B',
      table_function TYPE l_tabtype VALUE 'F',
      table          TYPE l_tabtype VALUE 'T',
      view           TYPE l_tabtype VALUE 'J',
    END OF co_datasource_type.

  METHODS:

    get_sql_name
      RETURNING
        VALUE(r_name) TYPE string,

    has_parameters
      RETURNING
        VALUE(r_boolean) TYPE abap_bool,
    get_datasource_type
      RETURNING
        VALUE(r_type) TYPE l_tabtype.

ENDINTERFACE.