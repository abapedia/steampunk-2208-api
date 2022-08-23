INTERFACE if_xco_aplo_subobject PUBLIC.
  TYPES:
    tv_name TYPE balsubobj.

  DATA:
    name   TYPE tv_name READ-ONLY,
    object TYPE REF TO if_xco_application_log_object READ-ONLY.

  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,

    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_aplo_subobject_content.
ENDINTERFACE.