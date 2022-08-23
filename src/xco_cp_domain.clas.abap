CLASS xco_cp_domain DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    CLASS-DATA output_style TYPE REF TO cl_xco_domain_output_style_f READ-ONLY.
    CLASS-DATA text_attribute TYPE REF TO cl_xco_cp_doma_text_attr_f READ-ONLY.
    CLASS-DATA origin TYPE REF TO cl_xco_cp_doma_origin_factory READ-ONLY.

ENDCLASS.

CLASS xco_cp_domain IMPLEMENTATION.
ENDCLASS.