CLASS cl_xco_ad_built_in_type_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      tv_type     TYPE c LENGTH 4,
      tv_length   TYPE n LENGTH 6,
      tv_decimals TYPE n LENGTH 6.

    DATA:
      int1       TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      int2       TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      int4       TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,

      " 8-byte integer, -9,223,372,036,854,775,808 to -9,223,372,036,854,775,807.
      int8       TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,

      " Decimal floating point number.
      decfloat16 TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      df16_raw   TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      decfloat34 TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      df34_raw   TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      fltp       TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      datn       TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      dats       TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      timn       TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      tims       TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      accp       TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      utclong    TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      clnt       TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      lang       TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      geom_ewkb  TYPE REF TO cl_xco_ad_built_in_type READ-ONLY,
      cuky       TYPE REF TO cl_xco_ad_built_in_type READ-ONLY.

    METHODS:
      dec
        IMPORTING
          iv_length     TYPE tv_length
          iv_decimals   TYPE tv_decimals
        RETURNING
          VALUE(ro_dec) TYPE REF TO cl_xco_ad_built_in_type,
      df16_dec
        IMPORTING
          iv_length          TYPE tv_length
          iv_decimals        TYPE tv_decimals
        RETURNING
          VALUE(ro_df16_dec) TYPE REF TO cl_xco_ad_built_in_type,
      df34_dec
        IMPORTING
          iv_length          TYPE tv_length
          iv_decimals        TYPE tv_decimals
        RETURNING
          VALUE(ro_df34_dec) TYPE REF TO cl_xco_ad_built_in_type,
      char
        IMPORTING
          iv_length      TYPE tv_length
        RETURNING
          VALUE(ro_char) TYPE REF TO cl_xco_ad_built_in_type,
      lchr
        IMPORTING
          iv_length      TYPE tv_length
        RETURNING
          VALUE(ro_lchr) TYPE REF TO cl_xco_ad_built_in_type,
      sstring
        IMPORTING
          iv_length         TYPE tv_length
        RETURNING
          VALUE(ro_sstring) TYPE REF TO cl_xco_ad_built_in_type,
      string
        IMPORTING
          iv_length        TYPE tv_length
        RETURNING
          VALUE(ro_string) TYPE REF TO cl_xco_ad_built_in_type,
      raw
        IMPORTING
          iv_length     TYPE tv_length
        RETURNING
          VALUE(ro_raw) TYPE REF TO cl_xco_ad_built_in_type,
      lraw
        IMPORTING
          iv_length      TYPE tv_length
        RETURNING
          VALUE(ro_lraw) TYPE REF TO cl_xco_ad_built_in_type,
      rawstring
        IMPORTING
          iv_length           TYPE tv_length
        RETURNING
          VALUE(ro_rawstring) TYPE REF TO cl_xco_ad_built_in_type,
      numc
        IMPORTING
          iv_length      TYPE tv_length
        RETURNING
          VALUE(ro_numc) TYPE REF TO cl_xco_ad_built_in_type,
      curr
        IMPORTING
          iv_length      TYPE tv_length
          iv_decimals    TYPE tv_decimals
        RETURNING
          VALUE(ro_curr) TYPE REF TO cl_xco_ad_built_in_type,
      quan
        IMPORTING
          iv_length      TYPE tv_length
          iv_decimals    TYPE tv_decimals
        RETURNING
          VALUE(ro_quan) TYPE REF TO cl_xco_ad_built_in_type,
      unit
        IMPORTING
          iv_length      TYPE tv_length
        RETURNING
          VALUE(ro_unit) TYPE REF TO cl_xco_ad_built_in_type,
      for
        IMPORTING
          iv_type                 TYPE tv_type
          iv_length               TYPE tv_length OPTIONAL
          iv_decimals             TYPE tv_decimals OPTIONAL
        RETURNING
          VALUE(ro_built_in_type) TYPE REF TO cl_xco_ad_built_in_type.

ENDCLASS.

CLASS cl_xco_ad_built_in_type_f IMPLEMENTATION.
ENDCLASS.