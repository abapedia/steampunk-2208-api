INTERFACE if_xco_cp_transports_factory PUBLIC.
  METHODS:
    where
      IMPORTING
        it_filters      TYPE sxco_t_tr_filters
      RETURNING
        VALUE(ro_where) TYPE REF TO if_xco_cp_tr_selection,

    workbench
      IMPORTING
        iv_target           TYPE if_xco_transport_target=>tv_value
      RETURNING
        VALUE(ro_workbench) TYPE REF TO if_xco_cp_transports,

    customizing
      IMPORTING
        iv_target             TYPE if_xco_transport_target=>tv_value
      RETURNING
        VALUE(ro_customizing) TYPE REF TO if_xco_cp_transports.
ENDINTERFACE.