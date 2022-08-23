INTERFACE if_a4c_rap_query_provider
  PUBLIC.
  METHODS select IMPORTING io_request  TYPE REF TO if_a4c_rap_query_request
                           io_response TYPE REF TO if_a4c_rap_query_response
                 RAISING   cx_a4c_rap_query_provider.

ENDINTERFACE.