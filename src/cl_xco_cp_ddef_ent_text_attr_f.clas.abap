CLASS cl_xco_cp_ddef_ent_text_attr_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      endusertext_label              TYPE REF TO cl_xco_ddef_ent_text_attribute READ-ONLY,

      ui_headerinfo_typename         TYPE REF TO cl_xco_ddef_ent_text_attribute READ-ONLY,
      ui_headerinfo_typenameplural   TYPE REF TO cl_xco_ddef_ent_text_attribute READ-ONLY,
      ui_headerinfo_title_label      TYPE REF TO cl_xco_ddef_ent_text_attribute READ-ONLY,
      ui_headerinfo_description_labe TYPE REF TO cl_xco_ddef_ent_text_attribute READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                 TYPE sxco_i18n_text_attribute
        RETURNING
          VALUE(ro_text_attribute) TYPE REF TO cl_xco_ddef_ent_text_attribute.

ENDCLASS.

CLASS cl_xco_cp_ddef_ent_text_attr_f IMPLEMENTATION.
ENDCLASS.