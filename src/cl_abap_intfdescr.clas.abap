CLASS cl_abap_intfdescr DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_objectdescr
  FINAL
  CREATE PROTECTED.

  PUBLIC SECTION.
    CONSTANTS intfkind_flatt TYPE abap_intfkind VALUE 'F' ##NO_TEXT.
    CONSTANTS intfkind_nested TYPE abap_intfkind VALUE 'N' ##NO_TEXT.
    DATA intf_kind TYPE abap_intfkind READ-ONLY.
    CLASS-METHODS load_class.

    METHODS is_instantiatable
      REDEFINITION.
  PROTECTED SECTION.

ENDCLASS.

CLASS cl_abap_intfdescr IMPLEMENTATION.
ENDCLASS.