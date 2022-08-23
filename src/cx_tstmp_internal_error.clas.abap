CLASS cx_tstmp_internal_error DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    DATA date TYPE d READ-ONLY.
    DATA time TYPE t READ-ONLY.
    DATA timezone TYPE tznzone READ-ONLY.
    DATA timestamp TYPE p READ-ONLY.
    DATA border TYPE p READ-ONLY.
    DATA interval_len TYPE i READ-ONLY VALUE 1. "#EC NOTEXT .
    DATA:
    mode TYPE c LENGTH 1 READ-ONLY.
    DATA returncode TYPE i READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !date TYPE d OPTIONAL
      !time TYPE t OPTIONAL
      !timezone TYPE tznzone OPTIONAL
      !timestamp TYPE p OPTIONAL
      !border TYPE p OPTIONAL
      !interval_len TYPE i DEFAULT 1
      !mode LIKE mode OPTIONAL
      !returncode TYPE i OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_tstmp_internal_error IMPLEMENTATION.
ENDCLASS.