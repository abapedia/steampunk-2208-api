INTERFACE if_bali_item_getter
  PUBLIC.
  TYPES ty_category TYPE char1.
  TYPES ty_detail_level TYPE ballevel.
  TYPES ty_log_item_number TYPE balmnr.
  TYPES ty_message_text TYPE string.
  TYPES ty_severity TYPE symsgty.
  TYPES ty_timestamp TYPE utclong.
  DATA category TYPE ty_category READ-ONLY.
  DATA log_item_number TYPE ty_log_item_number READ-ONLY.
  DATA severity TYPE ty_severity READ-ONLY.
  DATA detail_level TYPE ty_detail_level READ-ONLY.
  DATA timestamp TYPE ty_timestamp READ-ONLY.
  METHODS get_message_text
    RETURNING
      VALUE(message_text) TYPE ty_message_text
    RAISING
      cx_bali_runtime.
ENDINTERFACE.