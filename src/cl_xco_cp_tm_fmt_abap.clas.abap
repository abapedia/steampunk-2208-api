CLASS cl_xco_cp_tm_fmt_abap DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_cp_tm_date_format,
      if_xco_cp_tm_time_format,
      if_xco_cp_tm_moment_format.

    ALIASES:
      to_date FOR if_xco_cp_tm_date_format~to_date,
      from_date FOR if_xco_cp_tm_date_format~from_date,
      to_time FOR if_xco_cp_tm_time_format~to_time,
      from_time FOR if_xco_cp_tm_time_format~from_time,
      to_moment FOR if_xco_cp_tm_moment_format~to_moment,
      from_moment FOR if_xco_cp_tm_moment_format~from_moment.

ENDCLASS.

CLASS cl_xco_cp_tm_fmt_abap IMPLEMENTATION.
ENDCLASS.