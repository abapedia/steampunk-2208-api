CLASS cl_uom_dim_maintenance DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ty_dim_ts,
        dimid       TYPE c LENGTH 6,          "Dimension key
        txdim       TYPE c LENGTH 20,          "Dimension text
        si_unit     TYPE c LENGTH 3,          "Base unit
        si_txt      TYPE c LENGTH 30,          "Long text SI Unit
        length      TYPE i,           "Length exponent
        mass        TYPE i,           "Mass exponent
        time        TYPE i,          "Current exponent
        current     TYPE i,          "Electric current exponent
        temperature TYPE i,           "Temperature exponent
        mole_qty    TYPE i,          "Mole quantity exponent
        luminosity  TYPE i,          "Luminosity exponent
      END OF ty_dim_ts.
    TYPES:
      BEGIN OF ty_dim_upd_ts,
        txdim       TYPE c LENGTH 20,          "Dimension text
        si_unit     TYPE c LENGTH 3,          "Base unit
        length      TYPE i,           "Length exponent
        mass        TYPE i,           "Mass exponent
        time        TYPE i,          "Current exponent
        current     TYPE i,          "Electric current exponent
        temperature TYPE i,           "Temperature exponent
        mole_qty    TYPE i,          "Mole quantity exponent
        luminosity  TYPE i,          "Luminosity exponent
      END OF ty_dim_upd_ts.
    TYPES ty_error TYPE abap_bool.
    TYPES: BEGIN OF ty_t006t,
      mandt TYPE c LENGTH 3,
      spras TYPE c LENGTH 1,
      dimid TYPE c LENGTH 6,
      txdim TYPE c LENGTH 20,
      END OF ty_t006t.
    TYPES:
      BEGIN OF ty_dim_cre_ts,
        dimid       TYPE c LENGTH 6,          "Dimension key
        txdim       TYPE c LENGTH 20,          "Dimension text
        length      TYPE i,           "Length exponent
        mass        TYPE i,           "Mass exponent
        time        TYPE i,          "Current exponent
        current     TYPE i,          "Electric current exponent
        temperature TYPE i,           "Temperature exponent
        mole_qty    TYPE i,          "Mole quantity exponent
        luminosity  TYPE i,          "Luminosity exponent
      END OF ty_dim_cre_ts.
    TYPES: BEGIN OF ty_t006d,
      mandt TYPE c LENGTH 3,
      dimid TYPE c LENGTH 6,
      leng TYPE i,
      mass TYPE i,
      timex TYPE i,
      ecurr TYPE i,
      temp TYPE i,
      molqu TYPE i,
      light TYPE i,
      mssie TYPE c LENGTH 3,
      temp_dep TYPE c LENGTH 1,
      press_dep TYPE c LENGTH 1,
      END OF ty_t006d.
    TYPES ty_dimid TYPE c LENGTH 6.
    TYPES ty_transport TYPE c LENGTH 20.
    CLASS-METHODS get_instance
      IMPORTING
        !transport TYPE ty_transport OPTIONAL
      RETURNING
        VALUE(ro_dimension) TYPE REF TO cl_uom_dim_maintenance.
    METHODS delete
      IMPORTING
        !dimid       TYPE ty_dimid
      EXPORTING
        VALUE(error) TYPE ty_error
      RAISING
        cx_uom_error.
    METHODS read
      IMPORTING
        !dimid        TYPE ty_dimid
      EXPORTING
        VALUE(dim_st) TYPE ty_dim_ts
      RAISING
        cx_uom_error.
    METHODS create
      IMPORTING
        !dim_cre_ts  TYPE ty_dim_cre_ts
      EXPORTING
        VALUE(error) TYPE ty_error
      RAISING
        cx_uom_error.
    METHODS update
      IMPORTING
        !dimid       TYPE ty_dimid
        !dim_upd_ts  TYPE ty_dim_upd_ts
      EXPORTING
        VALUE(error) TYPE ty_error
      RAISING
        cx_uom_error.
ENDCLASS.

CLASS cl_uom_dim_maintenance IMPLEMENTATION.
ENDCLASS.