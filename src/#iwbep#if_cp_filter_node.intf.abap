INTERFACE /iwbep/if_cp_filter_node
  PUBLIC.
  METHODS and
    IMPORTING
      !io_filter_node       TYPE REF TO /iwbep/if_cp_filter_node
    RETURNING
      VALUE(ro_filter_node) TYPE REF TO /iwbep/if_cp_filter_node
    RAISING
      /iwbep/cx_gateway.
  METHODS not
    RETURNING
      VALUE(ro_filter_node) TYPE REF TO /iwbep/if_cp_filter_node
    RAISING
      /iwbep/cx_gateway.
  METHODS or
    IMPORTING
      !io_filter_node       TYPE REF TO /iwbep/if_cp_filter_node
    RETURNING
      VALUE(ro_filter_node) TYPE REF TO /iwbep/if_cp_filter_node
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.