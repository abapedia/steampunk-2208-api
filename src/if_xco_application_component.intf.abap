INTERFACE if_xco_application_component PUBLIC.
  TYPES:
    tv_name TYPE c LENGTH 24.

  DATA:
    name TYPE tv_name READ-ONLY.

  METHODS:
    get_filter
      RETURNING
        VALUE(ro_filter) TYPE REF TO if_xco_ar_filter.
ENDINTERFACE.