INTERFACE /iwbep/if_cp_request_changeset
  PUBLIC.

  INTERFACES /iwbep/if_cp_request_batch_op.
  METHODS add_request
    IMPORTING
      !io_request       TYPE REF TO /iwbep/if_cp_request_batch_op
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_changeset
    RAISING
      /iwbep/cx_gateway.
  METHODS check_execution
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_changeset
    RAISING /iwbep/cx_gateway.

ENDINTERFACE.