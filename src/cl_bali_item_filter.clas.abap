CLASS cl_bali_item_filter DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_bali_item_filter.

    ALIASES severity_table
      FOR if_bali_item_filter~severity_table.
    ALIASES apply_filter
      FOR if_bali_item_filter~apply_filter.
    ALIASES set_severity
      FOR if_bali_item_filter~set_severity.
    ALIASES ty_filter_passed
      FOR if_bali_item_filter~ty_filter_passed.
    ALIASES ty_severity
      FOR if_bali_item_filter~ty_severity.
    ALIASES ty_severity_table
      FOR if_bali_item_filter~ty_severity_table.
    CLASS-METHODS create
      RETURNING
      VALUE(filter) TYPE REF TO if_bali_item_filter.
ENDCLASS.

CLASS cl_bali_item_filter IMPLEMENTATION.
ENDCLASS.