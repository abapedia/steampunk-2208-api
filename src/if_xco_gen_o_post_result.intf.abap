INTERFACE if_xco_gen_o_post_result PUBLIC.
  DATA:
    findings TYPE REF TO if_xco_gen_o_findings READ-ONLY.

  METHODS:
    get_object_name
      IMPORTING
        io_name_choice        TYPE REF TO if_xco_name_choice
      RETURNING
        VALUE(rv_object_name) TYPE string.
ENDINTERFACE.