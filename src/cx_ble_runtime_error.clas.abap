CLASS cx_ble_runtime_error DEFINITION PUBLIC FINAL
    INHERITING FROM cx_static_check CREATE PUBLIC.
  PUBLIC SECTION.
    CONSTANTS:
      BEGIN OF co_properties,
        dump_line TYPE string VALUE 'dumpLine',
      END OF co_properties.

    TYPES:
      ty_callstack_line TYPE not_released,
      ty_callstack      TYPE STANDARD TABLE OF ty_callstack_line WITH NON-UNIQUE DEFAULT KEY,
      ty_impl_name      TYPE c LENGTH 30. "ENHNAME caused ATC error (C1 release)

    DATA:
      ku_src_line         TYPE i,
      callstack           TYPE ty_callstack,
      implementation_name TYPE ty_impl_name READ-ONLY. "ENHNAME caused ATC error (C1 release)

    METHODS:
      constructor
        IMPORTING
          textid              LIKE if_t100_message=>t100key OPTIONAL
          previous            LIKE previous OPTIONAL
          param1              TYPE string OPTIONAL
          param2              TYPE string OPTIONAL
          param3              TYPE string OPTIONAL
          param4              TYPE string OPTIONAL
          error_message       TYPE string OPTIONAL
          ku_src_line         TYPE i OPTIONAL
          callstack           TYPE ty_callstack OPTIONAL
          implementation_name TYPE ty_impl_name OPTIONAL, "ENHNAME caused ATC error (C1 release)

      raise_adt_exception REDEFINITION.
ENDCLASS.

CLASS cx_ble_runtime_error IMPLEMENTATION.
ENDCLASS.