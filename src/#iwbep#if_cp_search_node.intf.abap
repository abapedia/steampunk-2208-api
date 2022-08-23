INTERFACE /iwbep/if_cp_search_node
  PUBLIC.
  METHODS and
    IMPORTING
      iv_term               TYPE string
    RETURNING
      VALUE(ro_search_node) TYPE REF TO /iwbep/if_cp_search_node
    RAISING
      /iwbep/cx_gateway.
  METHODS and_node
    IMPORTING
      !io_search_node       TYPE REF TO /iwbep/if_cp_search_node
    RETURNING
      VALUE(ro_search_node) TYPE REF TO /iwbep/if_cp_search_node
    RAISING
      /iwbep/cx_gateway.
  METHODS not
    RETURNING
      VALUE(ro_search_node) TYPE REF TO /iwbep/if_cp_search_node
    RAISING
      /iwbep/cx_gateway.
  METHODS or
    IMPORTING
      iv_term               TYPE string
    RETURNING
      VALUE(ro_search_node) TYPE REF TO /iwbep/if_cp_search_node
    RAISING
      /iwbep/cx_gateway.
  METHODS or_node
    IMPORTING
      !io_search_node       TYPE REF TO /iwbep/if_cp_search_node
    RETURNING
      VALUE(ro_search_node) TYPE REF TO /iwbep/if_cp_search_node
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.