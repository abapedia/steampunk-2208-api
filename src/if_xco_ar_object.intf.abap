INTERFACE if_xco_ar_object PUBLIC.
  INTERFACES:
    if_xco_cts_changeable,

    if_xco_printable.

  TYPES:
    tv_namespace TYPE c LENGTH 10.

  DATA:
    type TYPE REF TO if_xco_ar_object_type READ-ONLY,
    name TYPE REF TO if_xco_ar_object_name READ-ONLY.

  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    get_namespace
      RETURNING
        VALUE(rv_namespace) TYPE tv_namespace,
    get_package
      RETURNING
        VALUE(ro_package) TYPE REF TO if_xco_package,
    get_original_language
      RETURNING
        VALUE(ro_original_language) TYPE REF TO if_xco_language.
ENDINTERFACE.