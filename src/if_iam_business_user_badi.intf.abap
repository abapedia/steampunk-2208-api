INTERFACE if_iam_business_user_badi
  PUBLIC.

  INTERFACES if_badi_interface.
  METHODS business_user_update DEFAULT IGNORE
    IMPORTING
      !it_user_id TYPE if_iam_business_user=>tt_user_id.
  METHODS business_user_create DEFAULT IGNORE
    IMPORTING
      !it_user_id TYPE if_iam_business_user=>tt_user_id.
  METHODS business_user_delete DEFAULT IGNORE
    IMPORTING
      !it_user_id TYPE if_iam_business_user=>tt_user_id.
  METHODS business_user_destruct DEFAULT IGNORE
    IMPORTING
      !it_user_id TYPE if_iam_business_user=>tt_user_id.
ENDINTERFACE.