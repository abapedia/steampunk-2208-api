INTERFACE if_xco_tr_filter PUBLIC.
  METHODS:
    apply
      IMPORTING
        io_selection_builder        TYPE REF TO cl_xco_tr_selection_builder
      RETURNING
        VALUE(ro_selection_builder) TYPE REF TO cl_xco_tr_selection_builder.
ENDINTERFACE.