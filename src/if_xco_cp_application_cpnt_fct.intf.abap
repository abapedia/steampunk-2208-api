INTERFACE if_xco_cp_application_cpnt_fct PUBLIC.
  METHODS:
    for_name
      IMPORTING
        iv_name                         TYPE if_xco_application_component=>tv_name
      RETURNING
        VALUE(ro_application_component) TYPE REF TO if_xco_application_component,

    get_filter
      IMPORTING
        io_constraint    TYPE REF TO cl_xco_asql_constraint
      RETURNING
        VALUE(ro_filter) TYPE REF TO if_xco_ar_filter.
ENDINTERFACE.