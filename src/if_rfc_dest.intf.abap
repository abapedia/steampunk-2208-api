INTERFACE if_rfc_dest
  PUBLIC.

  METHODS get_destination_name
    RETURNING
      VALUE(r_dest_name) TYPE rfcdest
    RAISING
      cx_rfc_dest_provider_error.
  METHODS close_connection
    RAISING
      cx_rfc_dest_provider_error.
  METHODS reset_connection
    RAISING
      cx_rfc_dest_provider_error.
ENDINTERFACE.