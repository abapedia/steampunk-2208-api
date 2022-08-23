INTERFACE if_xco_ar_fugr_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                  TYPE sxco_fg_object_name
      RETURNING
        VALUE(ro_function_group) TYPE REF TO if_xco_function_group.
ENDINTERFACE.