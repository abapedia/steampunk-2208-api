CLASS cl_xco_cp_aplo_subobj_t_attr_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      short_description TYPE REF TO cl_xco_aplo_subobj_text_attrbt READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                 TYPE sxco_i18n_text_attribute
        RETURNING
          VALUE(ro_text_attribute) TYPE REF TO cl_xco_aplo_subobj_text_attrbt.

ENDCLASS.

CLASS cl_xco_cp_aplo_subobj_t_attr_f IMPLEMENTATION.
ENDCLASS.