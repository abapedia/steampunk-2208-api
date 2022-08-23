INTERFACE if_xco_cp_transports PUBLIC.
  METHODS:
    create_request
      IMPORTING
        iv_short_description TYPE sxco_ar_short_description
      RETURNING
        VALUE(ro_request)    TYPE REF TO if_xco_cp_tr_request.
ENDINTERFACE.