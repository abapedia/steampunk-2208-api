INTERFACE if_iam_business_role
  PUBLIC.
  TYPES ty_id TYPE c LENGTH 40.
  TYPES ty_uuid TYPE x LENGTH 16.
  TYPES ty_description TYPE c LENGTH 80.
  TYPES ty_long_text TYPE string.
  TYPES: BEGIN OF ty_admin_data,
    creation_date_time TYPE p LENGTH 21 DECIMALS 0,
    creation_user_name TYPE c LENGTH 12,
    last_change_date_time TYPE p LENGTH 21 DECIMALS 0,
    last_change_user_name TYPE c LENGTH 12,
    END OF ty_admin_data.
  TYPES ty_brt_id TYPE c LENGTH 30.
  TYPES ty_flp_space_id TYPE c LENGTH 35.
  TYPES ty_bu_catalog_id TYPE c LENGTH 35.
  TYPES ty_user_id TYPE uname.
  TYPES ty_access_category_code TYPE c.
  TYPES ty_access_restriction_code TYPE c.
  TYPES ty_restriction_type TYPE c LENGTH 30.
  TYPES ty_restriction_field TYPE c LENGTH 30.
  TYPES:
    BEGIN OF ty_restriction_value,
      low_value  TYPE c LENGTH 40,
      high_value TYPE c LENGTH 40,
    END OF ty_restriction_value.
  TYPES:
    BEGIN OF ty_restriction_field_value,
      field_name TYPE c LENGTH 30,
      values     TYPE STANDARD TABLE OF ty_restriction_value WITH EMPTY KEY,
    END OF ty_restriction_field_value.
  TYPES:
    tt_restriction_field_value TYPE STANDARD TABLE OF ty_restriction_field_value WITH EMPTY KEY.
  TYPES:
    BEGIN OF ty_restriction,
      uuid                    TYPE ty_uuid,
      restriction_type        TYPE ty_restriction_type,
      access_category_code    TYPE ty_access_category_code,
      restriction_field_value TYPE tt_restriction_field_value,
    END OF ty_restriction.
  TYPES:
    tt_restriction TYPE STANDARD TABLE OF ty_restriction WITH EMPTY KEY.
  TYPES:
    tt_uuid TYPE STANDARD TABLE OF if_iam_business_role=>ty_uuid WITH EMPTY KEY.
  TYPES:
    tt_id TYPE STANDARD TABLE OF if_iam_business_role=>ty_id WITH EMPTY KEY.
  TYPES:
    tt_bu_catalog_id TYPE STANDARD TABLE OF if_iam_business_role=>ty_bu_catalog_id WITH EMPTY KEY.
  TYPES:
    tt_user_id TYPE STANDARD TABLE OF syuname WITH EMPTY KEY.
  TYPES:
    tt_flp_space_id TYPE STANDARD TABLE OF ty_flp_space_id WITH EMPTY KEY.

  CONSTANTS co_restriction_type_general TYPE ty_restriction_type VALUE space ##NO_TEXT.
  CONSTANTS:
    BEGIN OF co_access_category_code,
      read  TYPE ty_access_category_code VALUE 'R',
      write TYPE ty_access_category_code VALUE 'W',
      f4    TYPE ty_access_category_code VALUE 'F',
    END OF co_access_category_code.
  CONSTANTS:
    BEGIN OF co_access_restriction_code,
      unrestricted TYPE ty_access_restriction_code VALUE '1',
      restricted   TYPE ty_access_restriction_code VALUE '2',
      no_access    TYPE ty_access_restriction_code VALUE '3',
    END OF co_access_restriction_code.
  METHODS save
    EXPORTING
      !et_return TYPE bapirettab.
  METHODS delete
    EXPORTING
      !et_return TYPE bapirettab.
  METHODS get_uuid
    RETURNING
      VALUE(rv_uuid) TYPE ty_uuid.
  METHODS get_id
    RETURNING
      VALUE(rv_id) TYPE ty_id.
  METHODS get_description
    RETURNING
      VALUE(rv_description) TYPE ty_description.
  METHODS get_long_text
    RETURNING
      VALUE(rv_text) TYPE ty_long_text.
  METHODS get_template_id
    RETURNING
      VALUE(rv_brt_id) TYPE ty_brt_id.
  METHODS set_description
    IMPORTING
      !iv_description TYPE ty_description
    EXPORTING
      !et_return      TYPE bapirettab.
  METHODS set_long_text
    IMPORTING
      !iv_text   TYPE ty_long_text
    EXPORTING
      !et_return TYPE bapirettab.
  METHODS get_admin_data
    RETURNING
      VALUE(rs_admin_data) TYPE ty_admin_data.
  METHODS get_business_catalogs
    RETURNING
      VALUE(rt_bu_catalog) TYPE tt_bu_catalog_id.
  METHODS add_business_catalog
    IMPORTING
      !iv_bu_catalog_id TYPE ty_bu_catalog_id
    EXPORTING
      !et_return        TYPE bapirettab.
  METHODS remove_business_catalog
    IMPORTING
      !iv_bu_catalog_id TYPE ty_bu_catalog_id
    EXPORTING
      !et_return        TYPE bapirettab.
  METHODS get_flp_spaces
    RETURNING
      VALUE(rt_flp_space) TYPE tt_flp_space_id.
  METHODS add_flp_space
    IMPORTING
      !iv_flp_space_id TYPE ty_flp_space_id
    EXPORTING
      !et_return       TYPE bapirettab.
  METHODS add_flp_space_from_template
    IMPORTING
      !iv_flp_space_template_id TYPE ty_flp_space_id
      !iv_flp_space_id          TYPE ty_flp_space_id
    EXPORTING
      !et_return                TYPE bapirettab.
  METHODS remove_flp_space
    IMPORTING
      !iv_flp_space_id TYPE ty_flp_space_id
    EXPORTING
      !et_return       TYPE bapirettab.
  METHODS get_users
    RETURNING
      VALUE(rt_users) TYPE tt_user_id.
  METHODS add_user
    IMPORTING
      !iv_user_id TYPE ty_user_id
    EXPORTING
      !et_return  TYPE bapirettab.
  METHODS remove_user
    IMPORTING
      !iv_user_id TYPE ty_user_id
    EXPORTING
      !et_return  TYPE bapirettab.
  METHODS set_access_restriction
    IMPORTING
      !iv_write  TYPE ty_access_restriction_code OPTIONAL
      !iv_read   TYPE ty_access_restriction_code OPTIONAL
      !iv_f4     TYPE ty_access_restriction_code OPTIONAL
    EXPORTING
      !et_return TYPE bapirettab.
  METHODS get_access_restriction
    EXPORTING
      !ev_write TYPE ty_access_restriction_code
      !ev_read  TYPE ty_access_restriction_code
      !ev_f4    TYPE ty_access_restriction_code.
  METHODS get_restrictions
    IMPORTING
      !iv_access_category   TYPE ty_access_category_code OPTIONAL
    RETURNING
      VALUE(rt_restriction) TYPE tt_restriction.
  METHODS create_restriction
    IMPORTING
      !is_restriction TYPE ty_restriction
    EXPORTING
      !es_restriction TYPE ty_restriction
      !et_return      TYPE bapirettab.
  METHODS update_restriction
    IMPORTING
      !iv_uuid                     TYPE ty_uuid
      !it_restriction_field_values TYPE tt_restriction_field_value
    EXPORTING
      !et_return                   TYPE bapirettab.
  METHODS remove_restriction
    IMPORTING
      !iv_uuid             TYPE ty_uuid OPTIONAL
      !iv_restriction_type TYPE ty_restriction_type OPTIONAL
      !iv_access_category  TYPE ty_access_category_code OPTIONAL
    EXPORTING
      !et_return           TYPE bapirettab.
ENDINTERFACE.