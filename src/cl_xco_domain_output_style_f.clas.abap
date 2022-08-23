CLASS cl_xco_domain_output_style_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      normal                       TYPE REF TO cl_xco_domain_output_style READ-ONLY,
      sign_right                   TYPE REF TO cl_xco_domain_output_style READ-ONLY,
      scale_preserving             TYPE REF TO cl_xco_domain_output_style READ-ONLY,
      scientific                   TYPE REF TO cl_xco_domain_output_style READ-ONLY,
      scientific_with_leading_zero TYPE REF TO cl_xco_domain_output_style READ-ONLY,
      scale_preserving_scientific  TYPE REF TO cl_xco_domain_output_style READ-ONLY,
      engineering                  TYPE REF TO cl_xco_domain_output_style READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value               TYPE cl_xco_domain_output_style=>tv_value
        RETURNING
          VALUE(ro_output_style) TYPE REF TO cl_xco_domain_output_style.

ENDCLASS.

CLASS cl_xco_domain_output_style_f IMPLEMENTATION.
ENDCLASS.