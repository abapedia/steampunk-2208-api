INTERFACE if_xco_cp_data_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        ia_data               TYPE data
      RETURNING
        VALUE(ro_data_object) TYPE REF TO if_xco_data_object,
    at
      IMPORTING
        ia_data               TYPE REF TO data
      RETURNING
        VALUE(ro_data_object) TYPE REF TO if_xco_data_object.
ENDINTERFACE.