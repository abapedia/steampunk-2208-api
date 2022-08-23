CLASS cx_root DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_message.
    INTERFACES if_serializable_object.

    ALIASES get_longtext
    FOR if_message~get_longtext.
    ALIASES get_text
    FOR if_message~get_text.

    CONSTANTS cx_root TYPE c LENGTH 32 VALUE '16AA9A3937A9BB56E10000000A11447B'. "#EC NOTEXT
    DATA textid TYPE c LENGTH 32 READ-ONLY.
    DATA previous TYPE REF TO cx_root READ-ONLY.
    DATA kernel_errid TYPE c LENGTH 30 READ-ONLY.

    DATA is_resumable TYPE abap_bool READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
    METHODS get_source_position
    EXPORTING
      !program_name TYPE syrepid
      !include_name TYPE syrepid
      !source_line TYPE i.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_root IMPLEMENTATION.
  METHOD if_message~get_longtext.
    RETURN. " todo, implement method
  ENDMETHOD.
  METHOD if_message~get_text.
    RETURN. " todo, implement method
  ENDMETHOD.
  METHOD get_source_position.
    RETURN. " todo, implement method
  ENDMETHOD.
  METHOD constructor.
    RETURN. " todo, implement method
  ENDMETHOD.
ENDCLASS.