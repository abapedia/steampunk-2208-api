INTERFACE if_system_uuid_rfc4122_static
  PUBLIC.

  CLASS-METHODS create_uuid_x16_by_version
    IMPORTING
      !version TYPE i
    RETURNING
      VALUE(uuid) TYPE sysuuid_x16
    RAISING
      cx_uuid_error.
  CLASS-METHODS create_uuid_c36_by_version
    IMPORTING
      !version TYPE i
    RETURNING
      VALUE(uuid) TYPE sysuuid_c36
    RAISING
      cx_uuid_error.
  CLASS-METHODS get_uuid_x16_version
    IMPORTING
      !uuid_x16 TYPE sysuuid_x16
    EXPORTING
      !version TYPE i
    RAISING
      cx_uuid_error.
  CLASS-METHODS get_uuid_c36_version
    IMPORTING
      !uuid_c36 TYPE sysuuid_c36
    EXPORTING
      !version TYPE i
    RAISING
      cx_uuid_error.
ENDINTERFACE.