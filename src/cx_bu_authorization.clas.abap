CLASS cx_bu_authorization DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES: ty_authorization_name      TYPE c LENGTH 12
       , ty_authorization_object    TYPE c LENGTH 10
       , ty_authorization_fieldname TYPE c LENGTH 10
       .

    CONSTANTS authfield_not_valid TYPE c LENGTH 32 VALUE '00505695007C1EDAA8B4C50C9D931FD0' ##NO_TEXT.
    CONSTANTS inconsistent_auth TYPE c LENGTH 32 VALUE '005056A533E71EEAAFEDFF9EAC1E294E' ##NO_TEXT.
    CONSTANTS no_partner_provided TYPE c LENGTH 32 VALUE '00505695007C1EDAB19BD81A99484485' ##NO_TEXT.
    CONSTANTS no_user_assigned TYPE c LENGTH 32 VALUE '00505695007C1EDAB19BD86EA33B8485' ##NO_TEXT.
    DATA object TYPE ty_authorization_object.
    DATA field TYPE ty_authorization_fieldname.
    DATA auth TYPE ty_authorization_name.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !object TYPE ty_authorization_object OPTIONAL
      !field TYPE ty_authorization_fieldname OPTIONAL
      !auth TYPE ty_authorization_name OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_bu_authorization IMPLEMENTATION.
ENDCLASS.