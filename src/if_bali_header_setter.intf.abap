INTERFACE if_bali_header_setter
  PUBLIC.
  TYPES ty_object TYPE balobj_d.
  TYPES ty_subobject TYPE balsubobj.
  TYPES ty_external_id TYPE c LENGTH 100.
  TYPES ty_expiry_date TYPE d.
  TYPES ty_keep_until_expiry TYPE c.
  METHODS set_descriptor
    IMPORTING
      !object TYPE ty_object
      !subobject TYPE ty_subobject
      !external_id TYPE ty_external_id DEFAULT ' '
    RETURNING
      VALUE(new_header) TYPE REF TO if_bali_header_setter
    RAISING
      cx_bali_runtime.
  METHODS set_expiry
    IMPORTING
      !expiry_date TYPE ty_expiry_date
      !keep_until_expiry TYPE ty_keep_until_expiry DEFAULT abap_false
    RETURNING
      VALUE(new_header) TYPE REF TO if_bali_header_setter.
  METHODS get_all_values
    EXPORTING
      !object TYPE ty_object
      !subobject TYPE ty_subobject
      !external_id TYPE ty_external_id
      !expiry_date TYPE ty_expiry_date
      !keep_until_expiry TYPE ty_keep_until_expiry.
ENDINTERFACE.