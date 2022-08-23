CLASS cl_abap_tstmp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      operation_mode TYPE c LENGTH 1.

    CONSTANTS op_mode_next TYPE operation_mode VALUE 'N' ##NO_TEXT.
    CONSTANTS op_mode_before TYPE operation_mode VALUE 'B' ##NO_TEXT.
    CONSTANTS op_mode_wallclock TYPE operation_mode VALUE 'W' ##NO_TEXT.
    CONSTANTS unix_zero TYPE timestamp VALUE 19700101000000 ##NO_TEXT.

    CLASS-METHODS make_valid_time
      IMPORTING
      VALUE(date_in) TYPE d
      VALUE(time_in) TYPE t
      !time_zone TYPE tznzone
      !mode TYPE operation_mode DEFAULT op_mode_wallclock
      EXPORTING
      !date_valid TYPE d
      !time_valid TYPE t
      RAISING
      cx_parameter_invalid_range
      cx_tstmp_internal_error.

    CLASS-METHODS add
      IMPORTING
      !tstmp TYPE p
      !secs TYPE numeric
      RETURNING
      VALUE(r_tstmp) TYPE tzntstmpl
      RAISING
      cx_parameter_invalid_range
      cx_parameter_invalid_type.
    CLASS-METHODS add_to_short
      IMPORTING
      !tstmp TYPE p
      !secs TYPE numeric
      RETURNING
      VALUE(r_tstmp) TYPE tzntstmps
      RAISING
      cx_parameter_invalid_range
      cx_parameter_invalid_type.
    CLASS-METHODS subtract
      IMPORTING
      !tstmp1 TYPE p
      !tstmp2 TYPE p
      RETURNING
      VALUE(r_secs) TYPE tzntstmpl
      RAISING
      cx_parameter_invalid_range
      cx_parameter_invalid_type.
    CLASS-METHODS subtractsecs
      IMPORTING
      !tstmp TYPE p
      !secs TYPE numeric
      RETURNING
      VALUE(r_tstmp) TYPE tzntstmpl
      RAISING
      cx_parameter_invalid_range
      cx_parameter_invalid_type.
    CLASS-METHODS subtractsecs_to_short
      IMPORTING
      !tstmp TYPE p
      !secs TYPE numeric
      RETURNING
      VALUE(r_tstmp) TYPE tzntstmps
      RAISING
      cx_parameter_invalid_range
      cx_parameter_invalid_type.
    CLASS-METHODS compare
      IMPORTING
      !tstmp1 TYPE p
      !tstmp2 TYPE p
      RETURNING
      VALUE(comp) TYPE i
      RAISING
      cx_parameter_invalid_type
      cx_parameter_invalid_range.
    CLASS-METHODS td_add
      IMPORTING
      !date TYPE d
      !time TYPE t
      !secs TYPE numeric
      EXPORTING
      !res_date TYPE d
      !res_time TYPE t
      RAISING
      cx_parameter_invalid_type
      cx_parameter_invalid_range.
    CLASS-METHODS td_subtract
      IMPORTING
      !date1 TYPE d
      !time1 TYPE t
      !date2 TYPE d
      !time2 TYPE t
      EXPORTING
      !res_secs TYPE numeric
      RAISING
      cx_parameter_invalid_type
      cx_parameter_invalid_range.
    CLASS-METHODS isdoubleinterval
      IMPORTING
      !date TYPE d
      !time TYPE t
      RETURNING
      VALUE(isdoubleinterval) TYPE abap_bool
      RAISING
      cx_parameter_invalid_type
      cx_parameter_invalid_range.
    CLASS-METHODS systemtstmp_syst2loc
      IMPORTING
      !syst_date TYPE d
      !syst_time TYPE t
      EXPORTING
      !loc_date TYPE d
      !loc_time TYPE t
      !loc_dst TYPE abap_bool
      RAISING
      cx_parameter_invalid_range
      cx_parameter_invalid_type.
    CLASS-METHODS systemtstmp_loc2syst
      IMPORTING
      !loc_date TYPE d
      !loc_time TYPE t
      !loc_dst TYPE abap_bool
      EXPORTING
      !syst_date TYPE d
      !syst_time TYPE t
      RAISING
      cx_parameter_invalid_range
      cx_parameter_invalid_type.
    CLASS-METHODS systemtstmp_utc2syst
      IMPORTING
      !utc_tstmp TYPE timestamp
      EXPORTING
      !syst_date TYPE d
      !syst_time TYPE t
      RAISING
      cx_parameter_invalid_range.
    CLASS-METHODS systemtstmp_syst2utc
      IMPORTING
      !syst_date TYPE d
      !syst_time TYPE t
      !pendantic_check TYPE abap_bool DEFAULT ' '
      EXPORTING
      !utc_tstmp TYPE timestamp
      RAISING
      cx_parameter_invalid_range.
    CLASS-METHODS td_normalize
      IMPORTING
      !date_in TYPE d
      !time_in TYPE t
      EXPORTING
      !date_norm TYPE d
      !time_norm TYPE t
      RAISING
      cx_parameter_invalid_range.
    CLASS-METHODS normalize
      IMPORTING
      VALUE(tstmp_in) TYPE p
      RETURNING
      VALUE(tstmp_out) TYPE tzntstmpl
      RAISING
      cx_parameter_invalid_range
      cx_parameter_invalid_type.
    CLASS-METHODS move
      IMPORTING
      !tstmp_src TYPE p
      EXPORTING
      !tstmp_tgt TYPE p
      RAISING
      cx_parameter_invalid_type
      cx_parameter_invalid_range.
    CLASS-METHODS move_to_short
      IMPORTING
      !tstmp_src TYPE tzntstmpl
      RETURNING
      VALUE(tstmp_out) TYPE tzntstmps
      RAISING
      cx_parameter_invalid_type
      cx_parameter_invalid_range.
    CLASS-METHODS tstmp2utclong
      IMPORTING
      !timestamp TYPE p
      RETURNING
      VALUE(utclong) TYPE utclong
      RAISING
      cx_parameter_invalid_type
      cx_sy_conversion_no_date_time.
    CLASS-METHODS utclong2tstmp
      IMPORTING
      !utclong TYPE utclong
      RETURNING
      VALUE(timestamp) TYPE timestampl
      RAISING
      cx_sy_conversion_no_date_time.
    CLASS-METHODS utclong2tstmp_short
      IMPORTING
      !utclong TYPE utclong
      RETURNING
      VALUE(timestamp) TYPE timestamp
      RAISING
      cx_sy_conversion_no_date_time.
    CLASS-METHODS isdoubleinterval_tzone
      IMPORTING
      !date TYPE d
      !time TYPE t
      !tzone TYPE tznzone
      RETURNING
      VALUE(isdoubleinterval) TYPE abap_bool
      RAISING
      cx_parameter_invalid_type
      cx_parameter_invalid_range.
    CLASS-METHODS get_system_timezone
      RETURNING
      VALUE(system_timezone) TYPE tznzone.
    CLASS-METHODS timet_to_tstmp
      IMPORTING
      VALUE(time_t) TYPE int8
      !flag_local_appserver TYPE abap_bool DEFAULT abap_true
      RETURNING
      VALUE(r_tstmp) TYPE tzntstmps
      RAISING
      cx_parameter_invalid_range.
ENDCLASS.

CLASS cl_abap_tstmp IMPLEMENTATION.
ENDCLASS.