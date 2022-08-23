INTERFACE if_xco_ar_object_source PUBLIC.
  METHODS:
    create_selection_builder
      RETURNING
        VALUE(ro_selection_builder) TYPE REF TO cl_xco_ar_selection_builder.
ENDINTERFACE.