CLASS cl_xco_cp_bco_text_attribute_f DEFINITION PUBLIC FINAL  CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      name        TYPE REF TO cl_xco_bco_text_attribute READ-ONLY,
      description TYPE REF TO cl_xco_bco_text_attribute READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                 TYPE sxco_i18n_text_attribute
        RETURNING
          VALUE(ro_text_attribute) TYPE REF TO cl_xco_bco_text_attribute.

ENDCLASS.

CLASS cl_xco_cp_bco_text_attribute_f IMPLEMENTATION.
ENDCLASS.