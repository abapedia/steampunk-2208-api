CLASS cl_bcs_mail_binarypart DEFINITION
  PUBLIC
  INHERITING FROM cl_bcs_mail_bodypart
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    CLASS-METHODS:
      create_instance
        IMPORTING
          iv_content      TYPE xstring OPTIONAL
          iv_content_type TYPE ty_content_type OPTIONAL
          iv_filename     TYPE string OPTIONAL
        RETURNING
          VALUE(ro_instance) TYPE REF TO cl_bcs_mail_binarypart.

    METHODS:
      set_content
        IMPORTING
          iv_content TYPE xstring,
      get_content
        RETURNING VALUE(rv_content) TYPE xstring,

      is_valid REDEFINITION.

  PROTECTED SECTION.

    METHODS: to_bcom_mime REDEFINITION.

ENDCLASS.

CLASS cl_bcs_mail_binarypart IMPLEMENTATION.
ENDCLASS.