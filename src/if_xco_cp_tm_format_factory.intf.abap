INTERFACE if_xco_cp_tm_format_factory PUBLIC.
  DATA:
    abap              TYPE REF TO cl_xco_cp_tm_fmt_abap READ-ONLY,

    iso_8601_basic    TYPE REF TO cl_xco_cp_tm_fmt_iso_8601_bsc READ-ONLY,
    iso_8601_extended TYPE REF TO cl_xco_cp_tm_fmt_iso_8601_ext READ-ONLY.
ENDINTERFACE.