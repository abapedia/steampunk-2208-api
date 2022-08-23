INTERFACE if_osql_stub
  PUBLIC.
  INTERFACES: if_osql_double.

  ALIASES:
    co_datasource_type            FOR if_osql_double~co_datasource_type,
    get_sql_name                  FOR if_osql_double~get_sql_name,
    has_parameters                FOR if_osql_double~has_parameters,
    get_datasource_type           FOR if_osql_double~get_datasource_type.

  METHODS:
    insert
      IMPORTING
        i_test_data TYPE REF TO if_osql_test_data
      RETURNING VALUE(r_stub) TYPE REF TO if_osql_stub,
    clear
      RETURNING VALUE(r_stub) TYPE REF TO if_osql_stub.

ENDINTERFACE.