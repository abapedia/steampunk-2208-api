CLASS cl_bcs_mail_bodypart DEFINITION
  ABSTRACT
  PUBLIC
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ENUM ty_bodyrole,
        main,
        alternative,
        attachment,
      END OF ENUM ty_bodyrole,
      ty_content_type TYPE c LENGTH 128.

    METHODS:
      is_valid
        IMPORTING
          iv_role            TYPE ty_bodyrole
        RETURNING
          VALUE(rv_is_valid) TYPE abap_bool,
      get_filename
        RETURNING
          VALUE(rv_filename) TYPE string,
      set_filename
        IMPORTING
          iv_filename TYPE string,
      get_content_type
        RETURNING
          VALUE(rv_content_type) TYPE ty_content_type,
      set_content_type
        IMPORTING
          iv_content_type TYPE ty_content_type.

  PROTECTED SECTION.

    METHODS:
      to_bcom_mime ABSTRACT
        RETURNING
          VALUE(ro_bcom_mime) TYPE REF TO not_released.

ENDCLASS.

CLASS cl_bcs_mail_bodypart IMPLEMENTATION.
ENDCLASS.