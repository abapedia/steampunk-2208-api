CLASS cl_abap_enumdescr DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_elemdescr
  FINAL
  CREATE PROTECTED.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF member,
           name  TYPE c LENGTH 30,
           value TYPE string,
         END OF member.
    TYPES:
      member_table TYPE STANDARD TABLE OF member WITH KEY name.
    DATA base_type_kind TYPE abap_typekind READ-ONLY.
    DATA members TYPE member_table READ-ONLY.

    CLASS-METHODS load_enum.
    CLASS-METHODS create
      IMPORTING
      VALUE(p_base_type) TYPE REF TO cl_abap_elemdescr OPTIONAL
      !p_members TYPE member_table
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_enumdescr
      RAISING
      cx_sy_enum_creation.
    CLASS-METHODS get
      IMPORTING
      VALUE(p_base_type) TYPE REF TO cl_abap_elemdescr OPTIONAL
      !p_members TYPE member_table
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_enumdescr
      RAISING
      cx_sy_enum_creation.
  PROTECTED SECTION.

ENDCLASS.

CLASS cl_abap_enumdescr IMPLEMENTATION.
ENDCLASS.