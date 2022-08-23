CLASS cl_xco_tab_enhancement_ctgry DEFINITION PUBLIC
     CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
       tv_value TYPE n LENGTH 1.

    DATA:
      value TYPE tv_value READ-ONLY.

  PROTECTED SECTION.
    METHODS:
      get_name FINAL REDEFINITION.

ENDCLASS.

CLASS cl_xco_tab_enhancement_ctgry IMPLEMENTATION.
ENDCLASS.