CLASS cl_xco_tab_enhancement_ctgry_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      not_classified               TYPE REF TO cl_xco_tab_ec_0 READ-ONLY,
      not_extensible               TYPE REF TO cl_xco_tab_ec_1 READ-ONLY,
      extensible_character         TYPE REF TO cl_xco_tab_ec_2 READ-ONLY,
      extensible_character_numeric TYPE REF TO cl_xco_tab_ec_3 READ-ONLY,
      extensible_any               TYPE REF TO cl_xco_tab_ec_4 READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                       TYPE cl_xco_tab_enhancement_ctgry=>tv_value
        RETURNING
          VALUE(ro_enhancement_category) TYPE REF TO cl_xco_tab_enhancement_ctgry.

ENDCLASS.

CLASS cl_xco_tab_enhancement_ctgry_f IMPLEMENTATION.
ENDCLASS.