
INTERFACE if_ai_application_fault
  PUBLIC.

  TYPES:
    ts_subcode TYPE qname,
    tt_subcode TYPE STANDARD TABLE OF ts_subcode.
  TYPES:
    BEGIN OF ty_fault_reason_type,
           language TYPE sy-langu,
           text     TYPE string,
         END OF ty_fault_reason_type.
  TYPES:
    tt_fault_reason_type TYPE STANDARD TABLE OF ty_fault_reason_type.

  DATA mt_fault_reason_type TYPE tt_fault_reason_type READ-ONLY.
  DATA mt_subcode TYPE tt_subcode READ-ONLY.

  METHODS get_rt_fault_text
    RETURNING
      VALUE(rval) TYPE string.

  METHODS add_rt_reason_type
    IMPORTING
      !iv_reason_type TYPE string
      !iv_language TYPE cl_abap_context_info=>ty_language_key DEFAULT sy-langu
    RETURNING
      VALUE(rv_reason_type_added) TYPE abap_bool.
  METHODS add_rt_fault_subcode
    IMPORTING
      !iv_subcode TYPE qname
    RETURNING
      VALUE(rv_subcode_added) TYPE abap_bool.
ENDINTERFACE.