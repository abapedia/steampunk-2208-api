CLASS cl_xco_tr_resolution DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PROTECTED SECTION.
    TYPES:
      tt_transport_values TYPE STANDARD TABLE OF sxco_transport WITH EMPTY KEY.

    METHODS:
      constructor
        IMPORTING
          io_tool_set TYPE REF TO not_released,

      resolve_transport_values ABSTRACT
        IMPORTING
          it_selection_entries       TYPE not_released_ttyp
        RETURNING
          VALUE(rt_transport_values) TYPE tt_transport_values.

ENDCLASS.

CLASS cl_xco_tr_resolution IMPLEMENTATION.
ENDCLASS.