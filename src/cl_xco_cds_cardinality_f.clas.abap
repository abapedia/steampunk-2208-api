CLASS cl_xco_cds_cardinality_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      zero_to_one TYPE REF TO cl_xco_cds_cardinality_c READ-ONLY,
      one         TYPE REF TO cl_xco_cds_cardinality_1 READ-ONLY,
      one_to_one  TYPE REF TO cl_xco_cds_cardinality READ-ONLY,
      zero_to_n   TYPE REF TO cl_xco_cds_cardinality_cn READ-ONLY,
      one_to_n    TYPE REF TO cl_xco_cds_cardinality_n READ-ONLY.

    METHODS:
      range
        IMPORTING
          iv_min                TYPE i DEFAULT 0
          iv_max                TYPE i OPTIONAL
            PREFERRED PARAMETER iv_max
        RETURNING
          VALUE(ro_cardinality) TYPE REF TO cl_xco_cds_cardinality.

ENDCLASS.

CLASS cl_xco_cds_cardinality_f IMPLEMENTATION.
ENDCLASS.