INTERFACE if_xco_cp_json_data_factory PUBLIC.
  METHODS:
    builder
      RETURNING
        VALUE(ro_builder) TYPE REF TO if_xco_cp_json_data_builder,

    from_abap
      IMPORTING
        ia_abap             TYPE any
      RETURNING
        VALUE(ro_json_data) TYPE REF TO if_xco_cp_json_data,

    from_string
      IMPORTING
        iv_string           TYPE clike
      RETURNING
        VALUE(ro_json_data) TYPE REF TO if_xco_cp_json_data.
ENDINTERFACE.