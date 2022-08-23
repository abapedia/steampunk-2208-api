CLASS cl_abap_struct_utilities DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF filled_comp_descr,
        index TYPE i,
        name TYPE abap_compname,
      END OF filled_comp_descr,
      filled_comp_descr_tab TYPE STANDARD TABLE OF filled_comp_descr WITH EMPTY KEY.
    CLASS-METHODS filled_components   IMPORTING struct   TYPE data RETURNING VALUE(filled_comps) TYPE filled_comp_descr_tab.
    CLASS-METHODS filled_components_x IMPORTING struct_x TYPE data RETURNING VALUE(filled_comps) TYPE filled_comp_descr_tab.
    CLASS-METHODS filled_components_c IMPORTING struct_c TYPE data RETURNING VALUE(filled_comps) TYPE filled_comp_descr_tab.
ENDCLASS.

CLASS cl_abap_struct_utilities IMPLEMENTATION.
ENDCLASS.