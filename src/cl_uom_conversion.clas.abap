CLASS cl_uom_conversion DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES ty_addko TYPE p LENGTH 9 DECIMALS 0.
    TYPES ty_andec TYPE i.
    TYPES ty_decan TYPE i.
    TYPES ty_dimid TYPE c LENGTH 6.
    TYPES ty_dzaehl TYPE i.
    TYPES ty_exp10 TYPE i.
    TYPES ty_famunit TYPE c.
    TYPES ty_msehi TYPE msehi.
    TYPES ty_nennr TYPE i.
    TYPES ty_buffer_ctr TYPE char1.
    TYPES ty_context_switch TYPE boolean.

    CLASS-METHODS create
      IMPORTING
      VALUE(buffer_control) TYPE ty_buffer_ctr OPTIONAL
      VALUE(context_switch) TYPE ty_context_switch OPTIONAL
      RETURNING
      VALUE(uom) TYPE REF TO cl_uom_conversion.
    METHODS constructor
      IMPORTING
      VALUE(buffer_control) TYPE ty_buffer_ctr OPTIONAL
      VALUE(context_switch) TYPE ty_context_switch OPTIONAL.
    METHODS si_unit_get
      IMPORTING
      VALUE(dimension) TYPE ty_dimid OPTIONAL
      VALUE(unit) TYPE ty_msehi OPTIONAL
      EXPORTING
      VALUE(si_unit) TYPE ty_msehi
      EXCEPTIONS
      dimension_not_found
      unit_not_found
      si_unit_not_found.
    METHODS unit_conversion_simple
      IMPORTING
      !input TYPE any
      VALUE(no_type_check) TYPE any DEFAULT 'X'
      VALUE(round_sign) TYPE any OPTIONAL
      VALUE(unit_in) TYPE ty_msehi OPTIONAL
      VALUE(unit_out) TYPE ty_msehi OPTIONAL
      EXPORTING
      VALUE(add_const) TYPE any
      VALUE(decimals) TYPE any
      VALUE(denominator) TYPE any
      VALUE(numerator) TYPE any
      VALUE(output) TYPE any
      EXCEPTIONS
      conversion_not_found
      division_by_zero
      input_invalid
      output_invalid
      overflow
      type_invalid
      units_missing
      unit_in_not_found
      unit_out_not_found.
    METHODS unit_parameters_get
      IMPORTING
      VALUE(unit) TYPE ty_msehi
      EXPORTING
      VALUE(decimals) TYPE ty_andec
      VALUE(dimension) TYPE ty_dimid
      VALUE(numerator) TYPE ty_dzaehl
      VALUE(denominator) TYPE ty_nennr
      VALUE(exponent) TYPE ty_exp10
      VALUE(add_const) TYPE ty_addko
      VALUE(decan) TYPE ty_decan
      VALUE(famunit) TYPE ty_famunit
      EXCEPTIONS
      unit_not_found.
ENDCLASS.

CLASS cl_uom_conversion IMPLEMENTATION.
ENDCLASS.