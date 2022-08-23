CLASS cl_xco_cp_dtel_text_attr_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      short_field_label   TYPE REF TO cl_xco_dtel_text_attribute READ-ONLY,
      medium_field_label  TYPE REF TO cl_xco_dtel_text_attribute READ-ONLY,
      long_field_label    TYPE REF TO cl_xco_dtel_text_attribute READ-ONLY,
      heading_field_label TYPE REF TO cl_xco_dtel_text_attribute READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                 TYPE sxco_i18n_text_attribute
        RETURNING
          VALUE(ro_text_attribute) TYPE REF TO cl_xco_dtel_text_attribute.

ENDCLASS.

CLASS cl_xco_cp_dtel_text_attr_f IMPLEMENTATION.
ENDCLASS.