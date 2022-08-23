CLASS cl_ixml_xpath DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_ixml_xpath.

    TYPES:
      BEGIN OF t_nsdeclaration,
            prefix TYPE string,
            uri TYPE string,
          END OF t_nsdeclaration.
    TYPES:
      tt_nsdeclaration TYPE STANDARD TABLE OF t_nsdeclaration WITH EMPTY KEY.

    CLASS-METHODS create
      IMPORTING
      !expression TYPE string
      !nsdeclarations TYPE tt_nsdeclaration OPTIONAL
      RETURNING
      VALUE(rval) TYPE REF TO if_ixml_xpath.
    METHODS constructor.
ENDCLASS.

CLASS cl_ixml_xpath IMPLEMENTATION.
ENDCLASS.