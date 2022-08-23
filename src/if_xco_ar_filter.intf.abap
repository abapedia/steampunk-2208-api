INTERFACE if_xco_ar_filter PUBLIC.
  METHODS:
    apply
      IMPORTING
        io_selection_builder        TYPE REF TO cl_xco_ar_selection_builder
      RETURNING
        VALUE(ro_selection_builder) TYPE REF TO cl_xco_ar_selection_builder.
ENDINTERFACE.