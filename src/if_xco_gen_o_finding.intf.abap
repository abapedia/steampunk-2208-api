INTERFACE if_xco_gen_o_finding PUBLIC.
  TYPES:
    tv_object_type TYPE c LENGTH 4,
    tv_object_name TYPE c LENGTH 40.

  INTERFACES:
    if_xco_news.

  DATA:
    object_type TYPE tv_object_type READ-ONLY,
    object_name TYPE tv_object_name READ-ONLY,

    message     TYPE REF TO if_xco_message READ-ONLY.
ENDINTERFACE.