CLASS cl_fhc_calendar_id_mapper DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    CLASS-METHODS:
      create_id_mapper
      RETURNING
          VALUE(ro_id_mapper) TYPE REF TO if_fhc_id_mapper.

ENDCLASS.

CLASS cl_fhc_calendar_id_mapper IMPLEMENTATION.
ENDCLASS.