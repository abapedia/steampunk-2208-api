INTERFACE if_xco_cp_bal_source_factory PUBLIC.
  METHODS:
    memory
      RETURNING
        VALUE(ro_source) TYPE REF TO if_xco_cp_bal_source,

    database
      RETURNING
        VALUE(ro_source) TYPE REF TO if_xco_cp_bal_source,

    persistence
      IMPORTING
        io_persistence   TYPE REF TO if_xco_cp_bal_persistence
      RETURNING
        VALUE(ro_source) TYPE REF TO if_xco_cp_bal_source.
ENDINTERFACE.