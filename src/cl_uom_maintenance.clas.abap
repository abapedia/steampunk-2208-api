CLASS cl_uom_maintenance DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    TYPES ty_msehi TYPE msehi.
    TYPES:
      BEGIN OF ty_uom_cre_ts,
        commercial  TYPE c LENGTH 3,      "Commercial Unit
        technical   TYPE c LENGTH 6,      "Technical Unit
        dec_round   TYPE i,       "No. of decimal places for rounding
        numerator   TYPE i,       "Numerator for conversion to SI unit
        denominator TYPE i,       "Denominator for conversion into SI unit
        exponent    TYPE i,       "base ten exponent for conversion to SI unit
        constant    TYPE p LENGTH 9 DECIMALS 0,       "Additive constant for conversion to SI unit
        dec_disp    TYPE i,       "Number of decimal places for number display
        isocode     TYPE c LENGTH 3,     "ISO code for unit of measurement
        primary     TYPE c LENGTH 1,     "Selection field for conversion from ISO code to int. code
        text        TYPE c LENGTH 10,      "short text
        long_text   TYPE c LENGTH 30,      "long text
      END OF ty_uom_cre_ts.
    TYPES:
      BEGIN OF ty_uom_upd_ts,
        commercial  TYPE c LENGTH 3,      "Commercial Unit
        technical   TYPE c LENGTH 6,      "Technical Unit
        dec_round   TYPE i,       "No. of decimal places for rounding
        numerator   TYPE i,       "Numerator for conversion to SI unit
        denominator TYPE i,       "Denominator for conversion into SI unit
        exponent    TYPE i,       "base ten exponent for conversion to SI unit
        constant    TYPE p LENGTH 9 DECIMALS 0,       "Additive constant for conversion to SI unit
        dec_disp    TYPE i,       "Number of decimal places for number display
        isocode     TYPE c LENGTH 3,     "ISO code for unit of measurement
        primary     TYPE c LENGTH 1,     "Selection field for conversion from ISO code to int. code
        text        TYPE c LENGTH 10,      "short text
        long_text   TYPE c LENGTH 30,      "long text
      END OF ty_uom_upd_ts.
    TYPES:
      BEGIN OF ty_uom_conv_ts,
        dec_round   TYPE i,       "No. of decimal places for rounding
        numerator   TYPE i,       "Numerator for conversion to SI unit
        denominator TYPE i,       "Denominator for conversion into SI unit
        exponent    TYPE i,       "base ten exponent for conversion to SI unit
        constant    TYPE p LENGTH 9 DECIMALS 0,       "Additive constant for conversion to SI unit
      END OF ty_uom_conv_ts.
    TYPES ty_error TYPE abap_bool.
    TYPES ty_exist TYPE abap_bool.                                     "flag for exist
    TYPES ty_meinsint TYPE c LENGTH 3.                                   "internal unit without conversion
    TYPES ty_mseh3 TYPE c LENGTH 3.                                         "internal unit
    TYPES ty_mseh6 TYPE c LENGTH 6.                                         "technical unit
    TYPES ty_dimid TYPE c LENGTH 6.                                         "Dimenstion ID
    TYPES ty_transport TYPE c LENGTH 20.                                     "Transport request
    TYPES:
      BEGIN OF ty_uom_ts,
        unit        TYPE c LENGTH 3,       "Unit of Measurement
        commercial  TYPE c LENGTH 3,      "Commercial Unit
        technical   TYPE c LENGTH 6,      "Technical Unit
        dec_round   TYPE i,       "No. of decimal places for rounding
        dimid       TYPE c LENGTH 6,       "Dimension key
        numerator   TYPE i,       "Numerator for conversion to SI unit
        denominator TYPE i,       "Denominator for conversion into SI unit
        exponent    TYPE i,       "base ten exponent for conversion to SI unit
        constant    TYPE p LENGTH 9 DECIMALS 0,       "Additive constant for conversion to SI unit
        dec_disp    TYPE i,       "Number of decimal places for number display
        isocode     TYPE c LENGTH 3,     "ISO code for unit of measurement
        primary     TYPE c LENGTH 1,     "Selection field for conversion from ISO code to int. code
        text        TYPE c LENGTH 10,      "short text
        long_text   TYPE c LENGTH 30,      "long text
      END OF ty_uom_ts.
    METHODS delete
      IMPORTING
        !unit        TYPE ty_msehi
      EXPORTING
        VALUE(error) TYPE ty_error
      RAISING
        cx_uom_error.
    METHODS read
      IMPORTING
        !unit          TYPE ty_msehi
      EXPORTING
        VALUE(unit_st) TYPE ty_uom_ts
      RAISING
        cx_uom_error.
    METHODS update
      IMPORTING
        !unit        TYPE ty_msehi
        !unit_upd_ts TYPE ty_uom_upd_ts
      EXPORTING
        VALUE(error) TYPE ty_error
      RAISING
        cx_uom_error.
    METHODS create
      IMPORTING
        !unit_dimid  TYPE ty_dimid
        !unit_int    TYPE ty_meinsint
        !unit_cre_ts TYPE ty_uom_cre_ts
      EXPORTING
        VALUE(error) TYPE ty_error
      RAISING
        cx_uom_error.
    CLASS-METHODS get_instance
      IMPORTING
        !transport TYPE ty_transport OPTIONAL
      RETURNING
        VALUE(ro_uom) TYPE REF TO cl_uom_maintenance.
ENDCLASS.

CLASS cl_uom_maintenance IMPLEMENTATION.
ENDCLASS.