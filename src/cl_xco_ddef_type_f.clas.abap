CLASS cl_xco_ddef_type_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      view             TYPE REF TO cl_xco_ddef_type READ-ONLY,
      extend           TYPE REF TO cl_xco_ddef_type READ-ONLY,
      table_function   TYPE REF TO cl_xco_ddef_type READ-ONLY,
      table_entity     TYPE REF TO cl_xco_ddef_type READ-ONLY,
      abstract_entity  TYPE REF TO cl_xco_ddef_type READ-ONLY,
      hierarchy        TYPE REF TO cl_xco_ddef_type READ-ONLY,
      custom_entity    TYPE REF TO cl_xco_ddef_type READ-ONLY,
      projection_view  TYPE REF TO cl_xco_ddef_type READ-ONLY,
      extend_version_2 TYPE REF TO cl_xco_ddef_type READ-ONLY,
      view_entity      TYPE REF TO cl_xco_ddef_type READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value            TYPE cl_xco_ddef_type=>tv_value
        RETURNING
          VALUE(ro_ddef_type) TYPE REF TO cl_xco_ddef_type.

ENDCLASS.

CLASS cl_xco_ddef_type_f IMPLEMENTATION.
ENDCLASS.