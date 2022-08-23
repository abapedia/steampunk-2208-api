CLASS cl_xco_cp_iam_bc_txt_attr_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      description TYPE REF TO cl_xco_iam_bc_text_attribute READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                 TYPE sxco_i18n_text_attribute
        RETURNING
          VALUE(ro_text_attribute) TYPE REF TO cl_xco_iam_bc_text_attribute.

ENDCLASS.

CLASS cl_xco_cp_iam_bc_txt_attr_f IMPLEMENTATION.
ENDCLASS.