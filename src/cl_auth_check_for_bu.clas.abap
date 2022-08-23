CLASS cl_auth_check_for_bu DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    TYPES ty_partner_guid TYPE sysuuid_x16.
    TYPES ty_authorization_object TYPE c LENGTH 10.
    TYPES ty_authorization_fieldname TYPE c LENGTH 10.
    TYPES ty_authorization_value TYPE c LENGTH 40.
    METHODS check
      IMPORTING
      !iv_object TYPE ty_authorization_object
      !iv_field1 TYPE ty_authorization_fieldname DEFAULT space
      !iv_value1 TYPE ty_authorization_value DEFAULT space
      !iv_field2 TYPE ty_authorization_fieldname DEFAULT space
      !iv_value2 TYPE ty_authorization_value DEFAULT space
      !iv_field3 TYPE ty_authorization_fieldname DEFAULT space
      !iv_value3 TYPE ty_authorization_value DEFAULT space
      !iv_field4 TYPE ty_authorization_fieldname DEFAULT space
      !iv_value4 TYPE ty_authorization_value DEFAULT space
      !iv_field5 TYPE ty_authorization_fieldname DEFAULT space
      !iv_value5 TYPE ty_authorization_value DEFAULT space
      !iv_field6 TYPE ty_authorization_fieldname DEFAULT space
      !iv_value6 TYPE ty_authorization_value DEFAULT space
      !iv_field7 TYPE ty_authorization_fieldname DEFAULT space
      !iv_value7 TYPE ty_authorization_value DEFAULT space
      !iv_field8 TYPE ty_authorization_fieldname DEFAULT space
      !iv_value8 TYPE ty_authorization_value DEFAULT space
      !iv_field9 TYPE ty_authorization_fieldname DEFAULT space
      !iv_value9 TYPE ty_authorization_value DEFAULT space
      !iv_field10 TYPE ty_authorization_fieldname DEFAULT space
      !iv_value10 TYPE ty_authorization_value DEFAULT space
      RETURNING
      VALUE(rv_rc) TYPE sysubrc.
ENDCLASS.

CLASS cl_auth_check_for_bu IMPLEMENTATION.
ENDCLASS.