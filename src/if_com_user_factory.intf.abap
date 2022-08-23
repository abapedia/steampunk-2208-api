INTERFACE if_com_user_factory
  PUBLIC.

  TYPES:
    BEGIN OF ty_query,
      cu_id_range   TYPE RANGE OF if_com_user=>ty_cu-id,
      cu_name_range TYPE RANGE OF if_com_user=>ty_cu-name,
    END OF ty_query.
  METHODS query_cu
    IMPORTING
      !is_query TYPE if_com_user_factory=>ty_query OPTIONAL
    EXPORTING
      !et_com_user TYPE if_com_user=>tt_cu.
  METHODS get_cu_by_id
    IMPORTING
      !iv_id       TYPE if_com_user=>ty_cu-id
    EXPORTING
      !eo_com_user TYPE REF TO if_com_user.
ENDINTERFACE.