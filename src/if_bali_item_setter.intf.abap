INTERFACE if_bali_item_setter
  PUBLIC.
  TYPES ty_filter_passed TYPE abap_bool.
  TYPES ty_category TYPE char1.
  TYPES ty_detail_level TYPE ballevel.
  TYPES ty_severity TYPE symsgty.
  DATA category TYPE ty_category READ-ONLY.
  METHODS check_passing_item_filter
    IMPORTING
      !item_filter TYPE REF TO if_bali_item_filter
    RETURNING
      VALUE(filter_passed) TYPE ty_filter_passed.
ENDINTERFACE.