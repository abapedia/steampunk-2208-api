INTERFACE if_xco_tr_entry_source PUBLIC.
  METHODS:
    create_selection_builder
      RETURNING
        VALUE(ro_selection_builder) TYPE REF TO cl_xco_tr_es_builder.
ENDINTERFACE.