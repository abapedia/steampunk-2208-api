CLASS cl_uuid_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CLASS-METHODS create_system_uuid
      RETURNING
      VALUE(generator) TYPE REF TO if_system_uuid.
ENDCLASS.

CLASS cl_uuid_factory IMPLEMENTATION.
ENDCLASS.