INTERFACE if_constraint PUBLIC.

  TYPES:
      ty_t_constraints TYPE STANDARD TABLE OF REF TO if_constraint WITH DEFAULT KEY.

  METHODS:
      is_valid
        IMPORTING data_object TYPE data
        RETURNING VALUE(result) TYPE abap_bool,
      get_description
        RETURNING VALUE(result) TYPE string_table.

ENDINTERFACE.