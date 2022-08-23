CLASS cl_auth_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    TYPES ty_partner_guid TYPE sysuuid_x16. "released, compatible type to dtel bu_partner_guid
    TYPES ts_bapiret2 TYPE bapiret2.
    TYPES:
      BEGIN OF ts_person
       ,   partner_guid      TYPE        ty_partner_guid
       , END   OF ts_person.
    TYPES:
      tt_person TYPE STANDARD TABLE OF ts_person WITH DEFAULT KEY.
    TYPES:
      tt_bapiret2 TYPE STANDARD TABLE OF ts_bapiret2 WITH DEFAULT KEY.
    CLASS-METHODS get_auth_check_instance
      IMPORTING
      !iv_partner_guid TYPE ty_partner_guid
      RETURNING
      VALUE(ro_cl_auth_check_for_bu) TYPE REF TO cl_auth_check_for_bu
      RAISING
      cx_bu_authorization.
ENDCLASS.

CLASS cl_auth_factory IMPLEMENTATION.
ENDCLASS.