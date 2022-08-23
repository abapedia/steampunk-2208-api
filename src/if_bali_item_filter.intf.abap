INTERFACE if_bali_item_filter
  PUBLIC.
  TYPES ty_filter_passed TYPE abap_bool.
  TYPES ty_severity TYPE symsgty.
  TYPES:
    ty_severity_table TYPE STANDARD TABLE OF ty_severity WITH EMPTY KEY.
  DATA severity_table TYPE ty_severity_table READ-ONLY.
  METHODS set_severity
    IMPORTING
      !severity_table TYPE ty_severity_table
    RETURNING
      VALUE(new_filter) TYPE REF TO if_bali_item_filter.
  METHODS apply_filter
    IMPORTING
      !severity TYPE ty_severity OPTIONAL
    RETURNING
      VALUE(filter_passed) TYPE ty_filter_passed.
ENDINTERFACE.