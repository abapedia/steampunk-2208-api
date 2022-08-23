CLASS cl_ixml_core DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_ixml_core.

    CLASS-METHODS create
      RETURNING
        VALUE(rval) TYPE REF TO if_ixml_core.

    METHODS constructor.

ENDCLASS.

CLASS cl_ixml_core IMPLEMENTATION.
ENDCLASS.