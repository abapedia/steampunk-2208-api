INTERFACE if_cds_access_control_data
  PUBLIC.
  METHODS set_role_authorizations
    IMPORTING
      !i_role_authorizations TYPE role_authorizations.

ENDINTERFACE.