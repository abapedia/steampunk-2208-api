INTERFACE if_xco_tr_entry_filter PUBLIC.
  METHODS:
    apply
      IMPORTING
        io_selection_builder        TYPE REF TO cl_xco_tr_es_builder
      RETURNING
        VALUE(ro_selection_builder) TYPE REF TO cl_xco_tr_es_builder.
ENDINTERFACE.