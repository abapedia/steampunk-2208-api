CLASS cl_cds_entity_inspector DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE
  FOR TESTING.

  PUBLIC SECTION.
    CLASS-METHODS:
      create
        IMPORTING
          i_for_entity TYPE tabname
        RETURNING
          VALUE(r_result) TYPE REF TO if_cds_entity_inspector.
ENDCLASS.

CLASS cl_cds_entity_inspector IMPLEMENTATION.
ENDCLASS.