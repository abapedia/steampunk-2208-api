INTERFACE if_xco_dcl_cb_pfcg_right_side PUBLIC.
  TYPES:
    tv_authorization_object TYPE c LENGTH 10,
    tv_authorization_field  TYPE c LENGTH 10,

    BEGIN OF ts_authorization_field_value,
      authorization_field TYPE tv_authorization_field,
      value               TYPE REF TO if_xco_dcl_literal,
    END OF ts_authorization_field_value.

  METHODS:
    set_authorization_object
      IMPORTING
        iv_authorization_object TYPE tv_authorization_object
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_dcl_cb_pfcg_right_side,

    set_in_scenario
      IMPORTING
        iv_scenario_name TYPE string
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_dcl_cb_pfcg_right_side,

    add_authorization_field
      IMPORTING
        iv_authorization_field TYPE tv_authorization_field,

    add_pfcg_mapping
      IMPORTING
        iv_pfcg_mapping TYPE sxco_cds_object_name,

    add_authorization_field_value
      IMPORTING
        is_authorization_field_value TYPE ts_authorization_field_value.
ENDINTERFACE.