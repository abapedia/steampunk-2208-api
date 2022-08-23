CLASS cl_chdo_object_tools_rel DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_chdo_object_tools_rel.

    CONSTANTS gc_chng_ind_upadte TYPE if_chdo_object_tools_rel~ty_cdchngind VALUE 'U' ##NO_TEXT.
    CONSTANTS gc_chng_ind_insert TYPE if_chdo_object_tools_rel~ty_cdchngind VALUE 'I' ##NO_TEXT.
    CONSTANTS gc_chng_ind_delete TYPE if_chdo_object_tools_rel~ty_cdchngind VALUE 'D' ##NO_TEXT.
ENDCLASS.

CLASS cl_chdo_object_tools_rel IMPLEMENTATION.
ENDCLASS.