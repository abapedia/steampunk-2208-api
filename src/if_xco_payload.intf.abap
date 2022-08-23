INTERFACE if_xco_payload PUBLIC.
  METHODS:
    get_data_object
      RETURNING
        VALUE(ro_data_object) TYPE REF TO if_xco_data_object.
ENDINTERFACE.