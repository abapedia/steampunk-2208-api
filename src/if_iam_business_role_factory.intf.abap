INTERFACE if_iam_business_role_factory
  PUBLIC.

  TYPES:
    tt_business_role TYPE STANDARD TABLE OF REF TO if_iam_business_role WITH DEFAULT KEY.
  TYPES tt_uuid TYPE if_iam_business_role=>tt_uuid.
  TYPES tt_id TYPE if_iam_business_role=>tt_id.
  TYPES:
    ty_r_business_role_id TYPE RANGE OF  if_iam_business_role=>ty_id.
  TYPES:
    ty_r_bu_catalog_id TYPE RANGE OF  if_iam_business_role=>ty_bu_catalog_id.
  TYPES:
    BEGIN OF ty_brole_qry_result,
      uuid        TYPE  if_iam_business_role=>ty_uuid,
      id          TYPE  if_iam_business_role=>ty_id,
      description TYPE if_iam_business_role=>ty_description,
    END OF ty_brole_qry_result.
  TYPES:
    tt_brole_qry_result TYPE STANDARD TABLE OF ty_brole_qry_result WITH EMPTY KEY.
  METHODS create_business_role
    IMPORTING
      !iv_id TYPE if_iam_business_role=>ty_id
    EXPORTING
      !eo_business_role TYPE REF TO if_iam_business_role
      !et_return TYPE bapirettab.
  METHODS create_brole_from_template
    IMPORTING
      !iv_id TYPE if_iam_business_role=>ty_id
      !iv_template_id TYPE if_iam_business_role=>ty_brt_id
    EXPORTING
      !eo_business_role TYPE REF TO if_iam_business_role
      !et_return TYPE bapirettab.
  METHODS get_business_role
    IMPORTING
      !iv_uuid TYPE if_iam_business_role=>ty_uuid
    EXPORTING
      !eo_business_role TYPE REF TO if_iam_business_role
      !et_return TYPE bapirettab.
  METHODS get_business_roles
    IMPORTING
      !it_uuid TYPE tt_uuid
    EXPORTING
      !et_business_role TYPE tt_business_role
      !et_return TYPE bapirettab.
  METHODS get_business_role_by_id
    IMPORTING
      !iv_id TYPE if_iam_business_role=>ty_id
    EXPORTING
      !eo_business_role TYPE REF TO if_iam_business_role
      !et_return TYPE bapirettab.
  METHODS get_business_roles_by_id
    IMPORTING
      !it_id TYPE tt_id
    EXPORTING
      !et_business_role TYPE tt_business_role
      !et_return TYPE bapirettab.
  METHODS query_business_roles
    IMPORTING
      !ir_brole_id TYPE ty_r_business_role_id OPTIONAL
      !ir_bu_catalog TYPE ty_r_bu_catalog_id OPTIONAL
    EXPORTING
      !et_result TYPE tt_brole_qry_result.
ENDINTERFACE.