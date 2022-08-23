CLASS cl_bali_header_setter DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_bali_header_setter.

    ALIASES get_all_values
      FOR if_bali_header_setter~get_all_values.
    ALIASES set_descriptor
      FOR if_bali_header_setter~set_descriptor.
    ALIASES set_expiry
      FOR if_bali_header_setter~set_expiry.
    ALIASES ty_expiry_date
      FOR if_bali_header_setter~ty_expiry_date.
    ALIASES ty_external_id
      FOR if_bali_header_setter~ty_external_id.
    ALIASES ty_keep_until_expiry
      FOR if_bali_header_setter~ty_keep_until_expiry.
    ALIASES ty_object
      FOR if_bali_header_setter~ty_object.
    ALIASES ty_subobject
      FOR if_bali_header_setter~ty_subobject.
    CLASS-METHODS create
      IMPORTING
      !object TYPE ty_object
      !subobject TYPE ty_subobject
      !external_id TYPE ty_external_id DEFAULT ' '
      RETURNING
      VALUE(header) TYPE REF TO if_bali_header_setter
      RAISING
      cx_bali_runtime.
    METHODS constructor.
ENDCLASS.

CLASS cl_bali_header_setter IMPLEMENTATION.
ENDCLASS.