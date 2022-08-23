INTERFACE if_bali_constants
  PUBLIC.
  TYPES ty_category TYPE char1.
  TYPES ty_detail_level TYPE ballevel.
  TYPES ty_lifetime TYPE i.
  TYPES ty_severity TYPE symsgty.
  CONSTANTS c_category_message TYPE ty_category VALUE 'M' ##NO_TEXT.
  CONSTANTS c_category_free_text TYPE ty_category VALUE 'T' ##NO_TEXT.
  CONSTANTS c_category_exception TYPE ty_category VALUE 'E' ##NO_TEXT.
  CONSTANTS c_severity_exit TYPE ty_severity VALUE 'X' ##NO_TEXT.
  CONSTANTS c_severity_termination TYPE ty_severity VALUE 'A' ##NO_TEXT.
  CONSTANTS c_severity_error TYPE ty_severity VALUE 'E' ##NO_TEXT.
  CONSTANTS c_severity_warning TYPE ty_severity VALUE 'W' ##NO_TEXT.
  CONSTANTS c_severity_information TYPE ty_severity VALUE 'I' ##NO_TEXT.
  CONSTANTS c_severity_status TYPE ty_severity VALUE 'S' ##NO_TEXT.
  CONSTANTS c_severity_default TYPE ty_severity VALUE c_severity_status ##NO_TEXT.
  CONSTANTS c_detail_level_default TYPE ty_detail_level VALUE ' ' ##NO_TEXT.
  CONSTANTS c_lifetime_default TYPE ty_lifetime VALUE '7' ##NO_TEXT.
ENDINTERFACE.