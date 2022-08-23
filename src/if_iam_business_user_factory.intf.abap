INTERFACE if_iam_business_user_factory
  PUBLIC.
  TYPES tt_user_id TYPE if_iam_business_user=>tt_user_id.
  TYPES:
    tt_user_name TYPE STANDARD TABLE OF if_iam_business_user=>ty_user_name WITH EMPTY KEY.
  TYPES:
    tt_business_user TYPE STANDARD TABLE OF REF TO if_iam_business_user WITH DEFAULT KEY.
  METHODS create_business_user
    IMPORTING
      !iv_bupa_id       TYPE if_iam_business_user=>ty_bupa_id
      !iv_user_name     TYPE if_iam_business_user=>ty_user_name
    EXPORTING
      !eo_business_user TYPE REF TO if_iam_business_user
      !et_return        TYPE bapirettab.
  METHODS get_business_user
    IMPORTING
      !iv_user_id       TYPE if_iam_business_user=>ty_user_id OPTIONAL
      !iv_user_name     TYPE if_iam_business_user=>ty_user_name OPTIONAL
    EXPORTING
      !eo_business_user TYPE REF TO if_iam_business_user
      !et_return        TYPE bapirettab.
  METHODS get_business_users
    IMPORTING
      !it_user_id       TYPE tt_user_id OPTIONAL
      !it_user_name     TYPE tt_user_name OPTIONAL
    EXPORTING
      !et_business_user TYPE tt_business_user
      !et_return        TYPE bapirettab.
ENDINTERFACE.