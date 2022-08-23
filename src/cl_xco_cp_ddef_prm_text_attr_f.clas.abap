CLASS cl_xco_cp_ddef_prm_text_attr_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      endusertext_label TYPE REF TO cl_xco_ddef_prm_text_attribute READ-ONLY.

    METHODS:
      consumption_valuehelpdef_label
        IMPORTING
          iv_index                             TYPE i
        RETURNING
          VALUE(ro_consumption_valuehelpdef_l) TYPE REF TO cl_xco_ddef_prm_text_attribute,

      for
        IMPORTING
          iv_value                 TYPE sxco_i18n_text_attribute
        RETURNING
          VALUE(ro_text_attribute) TYPE REF TO cl_xco_ddef_prm_text_attribute.

ENDCLASS.

CLASS cl_xco_cp_ddef_prm_text_attr_f IMPLEMENTATION.
ENDCLASS.