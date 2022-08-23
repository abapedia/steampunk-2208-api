CLASS cl_xco_tt_key_category_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      unique        TYPE REF TO cl_xco_tt_key_category READ-ONLY,
      non_unique    TYPE REF TO cl_xco_tt_key_category READ-ONLY,
      not_specified TYPE REF TO cl_xco_tt_key_category READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value               TYPE cl_xco_tt_key_category=>tv_value
        RETURNING
          VALUE(ro_key_category) TYPE REF TO cl_xco_tt_key_category.

ENDCLASS.

CLASS cl_xco_tt_key_category_f IMPLEMENTATION.
ENDCLASS.