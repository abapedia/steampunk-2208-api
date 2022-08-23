
INTERFACE if_system_uuid
  PUBLIC.

  METHODS create_uuid_x16
    RETURNING
      VALUE(uuid) TYPE sysuuid_x16
    RAISING
      cx_uuid_error.
  METHODS create_uuid_c22
    RETURNING
      VALUE(uuid) TYPE sysuuid_c22
    RAISING
      cx_uuid_error.
  METHODS create_uuid_c26
    RETURNING
      VALUE(uuid) TYPE sysuuid_c26
    RAISING
      cx_uuid_error.
  METHODS create_uuid_c32
    RETURNING
      VALUE(uuid) TYPE sysuuid_c32
    RAISING
      cx_uuid_error.
  METHODS convert_uuid_x16
    IMPORTING
      !uuid TYPE sysuuid_x16
    EXPORTING
      !uuid_c22 TYPE sysuuid_c22
      !uuid_c32 TYPE sysuuid_c32
      !uuid_c26 TYPE sysuuid_c26
    RAISING
      cx_uuid_error.
  METHODS convert_uuid_c22
    IMPORTING
      !uuid TYPE sysuuid_c22
    EXPORTING
      !uuid_x16 TYPE sysuuid_x16
      !uuid_c32 TYPE sysuuid_c32
      !uuid_c26 TYPE sysuuid_c26
    RAISING
      cx_uuid_error.
  METHODS convert_uuid_c26
    IMPORTING
      !uuid TYPE sysuuid_c26
    EXPORTING
      !uuid_x16 TYPE sysuuid_x16
      !uuid_c32 TYPE sysuuid_c32
      !uuid_c22 TYPE sysuuid_c22
    RAISING
      cx_uuid_error.
  METHODS convert_uuid_c32
    IMPORTING
      !uuid TYPE sysuuid_c32
    EXPORTING
      !uuid_x16 TYPE sysuuid_x16
      !uuid_c22 TYPE sysuuid_c22
      !uuid_c26 TYPE sysuuid_c26
    RAISING
      cx_uuid_error.
ENDINTERFACE.