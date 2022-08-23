INTERFACE if_xco_aplo_content PUBLIC.
  TYPES:
    tv_description TYPE c LENGTH 60,

    BEGIN OF ts_content,
      description TYPE tv_description,
    END OF ts_content.

  DATA:
    application_log_object TYPE REF TO if_xco_application_log_object READ-ONLY.

  METHODS:
    get_description
      RETURNING
        VALUE(rv_description) TYPE tv_description,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.