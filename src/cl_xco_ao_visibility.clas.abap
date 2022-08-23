CLASS cl_xco_ao_visibility DEFINITION PUBLIC ABSTRACT
     CREATE PROTECTED.
  PUBLIC SECTION.
    TYPES:
      tv_value TYPE n LENGTH 1,
      list     TYPE STANDARD TABLE OF REF TO cl_xco_ao_visibility WITH DEFAULT KEY.

    DATA:
      value TYPE tv_value READ-ONLY.

    METHODS:
      get_class_definition_section ABSTRACT
        IMPORTING
          io_class_definition                TYPE REF TO if_xco_clas_definition
        RETURNING
          VALUE(ro_class_definition_section) TYPE REF TO if_xco_clas_definition_section.

  PROTECTED SECTION.
    METHODS:
      constructor
        IMPORTING
          iv_value TYPE tv_value
          iv_name  TYPE string,

      get_name REDEFINITION.

ENDCLASS.

CLASS cl_xco_ao_visibility IMPLEMENTATION.
ENDCLASS.