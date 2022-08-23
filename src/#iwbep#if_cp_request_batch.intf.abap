INTERFACE /iwbep/if_cp_request_batch
  PUBLIC.
  METHODS add_request
    IMPORTING
      !io_request       TYPE REF TO /iwbep/if_cp_request_batch_op
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_batch
    RAISING
      /iwbep/cx_gateway.
  METHODS check_execution
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_batch
    RAISING /iwbep/cx_gateway.
  METHODS create_request_for_changeset
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_changeset
    RAISING
      /iwbep/cx_gateway.
  METHODS execute
    RAISING /iwbep/cx_gateway.

ENDINTERFACE.