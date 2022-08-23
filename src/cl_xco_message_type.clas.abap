CLASS cl_xco_message_type DEFINITION PUBLIC FINAL
     CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      tv_value TYPE symsgty.

    DATA:
      value TYPE tv_value READ-ONLY.

    METHODS:
      occurs_in
        IMPORTING
          io_news          TYPE REF TO if_xco_news
        RETURNING
          VALUE(rv_occurs) TYPE abap_bool.

ENDCLASS.

CLASS cl_xco_message_type IMPLEMENTATION.
ENDCLASS.