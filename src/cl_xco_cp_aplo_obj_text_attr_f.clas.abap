CLASS cl_xco_cp_aplo_obj_text_attr_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      short_description TYPE REF TO cl_xco_aplo_obj_text_attribute READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                 TYPE sxco_i18n_text_attribute
        RETURNING
          VALUE(ro_text_attribute) TYPE REF TO cl_xco_aplo_obj_text_attribute.

ENDCLASS.

CLASS cl_xco_cp_aplo_obj_text_attr_f IMPLEMENTATION.
ENDCLASS.