CLASS cl_xco_me_ent_text_attribute DEFINITION PUBLIC FINAL
     CREATE PRIVATE.

  PUBLIC SECTION.
    METHODS:
      create_text
        IMPORTING
          io_value       TYPE REF TO if_xco_text
        RETURNING
          VALUE(ro_text) TYPE REF TO cl_xco_me_ent_text.

ENDCLASS.

CLASS cl_xco_me_ent_text_attribute IMPLEMENTATION.
ENDCLASS.