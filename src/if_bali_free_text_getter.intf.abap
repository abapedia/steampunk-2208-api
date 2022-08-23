INTERFACE if_bali_free_text_getter
  PUBLIC.

  INTERFACES if_bali_item_getter.

  ALIASES category
    FOR if_bali_item_getter~category.
  ALIASES detail_level
    FOR if_bali_item_getter~detail_level.
  ALIASES log_item_number
    FOR if_bali_item_getter~log_item_number.
  ALIASES severity
    FOR if_bali_item_getter~severity.
  ALIASES timestamp
    FOR if_bali_item_getter~timestamp.
  ALIASES get_message_text
    FOR if_bali_item_getter~get_message_text.
  ALIASES ty_category
    FOR if_bali_item_getter~ty_category.
  ALIASES ty_detail_level
    FOR if_bali_item_getter~ty_detail_level.
  ALIASES ty_log_item_number
    FOR if_bali_item_getter~ty_log_item_number.
  ALIASES ty_message_text
    FOR if_bali_item_getter~ty_message_text.
  ALIASES ty_severity
    FOR if_bali_item_getter~ty_severity.
  ALIASES ty_timestamp
    FOR if_bali_item_getter~ty_timestamp.
ENDINTERFACE.