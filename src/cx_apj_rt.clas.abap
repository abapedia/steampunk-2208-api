CLASS cx_apj_rt DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.

    CONSTANTS:
    BEGIN OF cx_job_doesnt_exist,
       msgid TYPE symsgid VALUE 'APJ_RT',
       msgno TYPE symsgno VALUE '003',
       attr1 TYPE scx_attrname VALUE '',
       attr2 TYPE scx_attrname VALUE '',
       attr3 TYPE scx_attrname VALUE '',
       attr4 TYPE scx_attrname VALUE '',
      END OF cx_job_doesnt_exist.
    CONSTANTS:
    BEGIN OF cx_job_cancel_failed,
       msgid TYPE symsgid VALUE 'APJ_RT',
       msgno TYPE symsgno VALUE '004',
       attr1 TYPE scx_attrname VALUE 'OBJECT',
       attr2 TYPE scx_attrname VALUE '',
       attr3 TYPE scx_attrname VALUE '',
       attr4 TYPE scx_attrname VALUE '',
      END OF cx_job_cancel_failed.
    CONSTANTS:
    BEGIN OF cx_no_auth_to_delete,
       msgid TYPE symsgid VALUE 'APJ_RT',
       msgno TYPE symsgno VALUE '005',
       attr1 TYPE scx_attrname VALUE 'UNAME',
       attr2 TYPE scx_attrname VALUE 'OBJECT',
       attr3 TYPE scx_attrname VALUE '',
       attr4 TYPE scx_attrname VALUE '',
      END OF cx_no_auth_to_delete.
    CONSTANTS:
    BEGIN OF cx_no_auth_to_read_details,
       msgid TYPE symsgid VALUE 'APJ_RT',
       msgno TYPE symsgno VALUE '028',
       attr1 TYPE scx_attrname VALUE 'UNAME',
       attr2 TYPE scx_attrname VALUE '',
       attr3 TYPE scx_attrname VALUE '',
       attr4 TYPE scx_attrname VALUE '',
     END OF cx_no_auth_to_read_details.

    CONSTANTS:
    BEGIN OF cx_no_runtime_info,
       msgid TYPE symsgid VALUE 'BT',
       msgno TYPE symsgno VALUE '801',
       attr1 TYPE scx_attrname VALUE '',
       attr2 TYPE scx_attrname VALUE '',
       attr3 TYPE scx_attrname VALUE '',
       attr4 TYPE scx_attrname VALUE '',
      END OF cx_no_runtime_info.

    DATA bapimsg TYPE bapiret2.
    DATA:
    object TYPE c LENGTH 40.
    DATA uname TYPE uname.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !bapimsg TYPE bapiret2 OPTIONAL
      !object LIKE object OPTIONAL
      !uname TYPE uname OPTIONAL.
    METHODS get_bapiret2
    RETURNING
      VALUE(rs_msg) TYPE bapiret2.

    METHODS if_message~get_longtext
    REDEFINITION.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_apj_rt IMPLEMENTATION.
ENDCLASS.