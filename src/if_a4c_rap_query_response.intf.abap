INTERFACE if_a4c_rap_query_response
  PUBLIC.
  METHODS set_data
    IMPORTING
      !it_data TYPE STANDARD TABLE.
  METHODS set_total_number_of_records
    IMPORTING
      !iv_total_number_of_records TYPE int8.

ENDINTERFACE.