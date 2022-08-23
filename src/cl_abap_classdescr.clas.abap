CLASS cl_abap_classdescr DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_objectdescr
  FINAL
  CREATE PROTECTED.

  PUBLIC SECTION.
    CONSTANTS classkind_common TYPE abap_classkind VALUE 'C' ##NO_TEXT.
    CONSTANTS classkind_final TYPE abap_classkind VALUE 'F' ##NO_TEXT.
    CONSTANTS classkind_abstract TYPE abap_classkind VALUE 'A' ##NO_TEXT.
    DATA class_kind TYPE abap_classkind READ-ONLY.
    DATA create_visibility TYPE abap_visibility READ-ONLY.
    CLASS-METHODS load_class.
    METHODS get_super_class_type
      RETURNING
      VALUE(p_descr_ref) TYPE REF TO cl_abap_classdescr
      EXCEPTIONS
      super_class_not_found.
    METHODS get_friend_types
      RETURNING
      VALUE(p_friends_tab) TYPE abap_frndtypes_tab.
    CLASS-METHODS get_class_name
      IMPORTING
      !p_object TYPE REF TO object
      RETURNING
      VALUE(p_name) TYPE abap_abstypename.
    METHODS is_shared_memory_enabled
      RETURNING
      VALUE(p_is_shared_memory_enabled) TYPE abap_bool.

    METHODS is_instantiatable
      REDEFINITION.
  PROTECTED SECTION.

ENDCLASS.

CLASS cl_abap_classdescr IMPLEMENTATION.
ENDCLASS.