CLASS cl_abap_tabledescr DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_complexdescr
  FINAL
  CREATE PROTECTED.

  PUBLIC SECTION.
    CONSTANTS tablekind_any TYPE abap_tablekind VALUE 'A' ##NO_TEXT.
    CONSTANTS tablekind_std TYPE abap_tablekind VALUE 'S' ##NO_TEXT.
    CONSTANTS tablekind_index TYPE abap_tablekind VALUE 'I' ##NO_TEXT.
    CONSTANTS tablekind_hashed TYPE abap_tablekind VALUE 'H' ##NO_TEXT.
    CONSTANTS tablekind_sorted TYPE abap_tablekind VALUE 'O' ##NO_TEXT.
    CONSTANTS keydefkind_default TYPE abap_keydefkind VALUE 'D' ##NO_TEXT.
    CONSTANTS keydefkind_tableline TYPE abap_keydefkind VALUE 'L' ##NO_TEXT.
    CONSTANTS keydefkind_user TYPE abap_keydefkind VALUE 'U' ##NO_TEXT.
    CONSTANTS keydefkind_empty TYPE abap_keydefkind VALUE 'E' ##NO_TEXT.
    DATA key TYPE abap_keydescr_tab READ-ONLY.
    DATA initial_size TYPE i READ-ONLY.
    DATA key_defkind TYPE abap_keydefkind READ-ONLY.
    DATA has_unique_key TYPE abap_bool READ-ONLY.
    DATA table_kind TYPE abap_tablekind READ-ONLY.
    CONSTANTS further_scnd_keys_not_spec TYPE i VALUE 26453701 ##NO_TEXT.
    CONSTANTS further_scnd_keys_yes TYPE i VALUE 26453702 ##NO_TEXT.
    CONSTANTS further_scnd_keys_no TYPE i VALUE 26453703 ##NO_TEXT.
    CLASS-METHODS load_class.
    METHODS get_table_line_type
      RETURNING
      VALUE(p_descr_ref) TYPE REF TO cl_abap_datadescr.
    CLASS-METHODS get
      IMPORTING
      !p_line_type TYPE REF TO cl_abap_datadescr
      !p_table_kind TYPE abap_tablekind DEFAULT tablekind_std
      !p_unique TYPE abap_bool DEFAULT abap_false
      !p_key TYPE abap_keydescr_tab OPTIONAL
      !p_key_kind TYPE abap_keydefkind DEFAULT keydefkind_default
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_tabledescr
      RAISING
      cx_sy_table_creation.
    CLASS-METHODS create
      IMPORTING
      !p_line_type TYPE REF TO cl_abap_datadescr
      !p_table_kind TYPE abap_tablekind DEFAULT tablekind_std
      !p_unique TYPE abap_bool DEFAULT abap_false
      !p_key TYPE abap_keydescr_tab OPTIONAL
      !p_key_kind TYPE abap_keydefkind DEFAULT keydefkind_default
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_tabledescr
      RAISING
      cx_sy_table_creation.
    METHODS get_keys
      RETURNING
      VALUE(p_keys) TYPE abap_table_keydescr_tab.
    METHODS get_key_aliases
      RETURNING
      VALUE(p_key_aliases) TYPE abap_key_alias_map.
    CLASS-METHODS get_with_keys
      IMPORTING
      !p_line_type TYPE REF TO cl_abap_datadescr
      !p_keys TYPE abap_table_keydescr_tab
      !p_key_aliases TYPE abap_key_alias_map OPTIONAL
      !p_initial_size TYPE i DEFAULT 0
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_tabledescr
      RAISING
      cx_sy_table_creation.
    CLASS-METHODS create_with_keys
      IMPORTING
      !p_line_type TYPE REF TO cl_abap_datadescr
      !p_keys TYPE abap_table_keydescr_tab
      !p_initial_size TYPE i DEFAULT 0
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_tabledescr
      RAISING
      cx_sy_table_creation.
  PROTECTED SECTION.

ENDCLASS.

CLASS cl_abap_tabledescr IMPLEMENTATION.
ENDCLASS.