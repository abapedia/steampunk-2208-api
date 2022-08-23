CLASS cl_xco_tr_es_builder DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PROTECTED SECTION.
    TYPES:
      BEGIN OF ts_for,
        object TYPE REF TO not_released,
      END OF ts_for.

    DATA:
      for TYPE ts_for.

    METHODS:
      get_selection ABSTRACT
        RETURNING
          VALUE(ro_selection) TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_tr_es_builder IMPLEMENTATION.
ENDCLASS.