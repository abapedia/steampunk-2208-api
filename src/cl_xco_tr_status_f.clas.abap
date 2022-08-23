CLASS cl_xco_tr_status_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      modifiable                   TYPE REF TO cl_xco_tr_status READ-ONLY,
      modifiable_protected         TYPE REF TO cl_xco_tr_status READ-ONLY,
      release_started              TYPE REF TO cl_xco_tr_status READ-ONLY,
      released                     TYPE REF TO cl_xco_tr_status READ-ONLY,
      released_w_import_protection TYPE REF TO cl_xco_tr_status READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                   TYPE cl_xco_tr_status=>tv_value
        RETURNING
          VALUE(ro_transport_status) TYPE REF TO cl_xco_tr_status.

ENDCLASS.

CLASS cl_xco_tr_status_f IMPLEMENTATION.
ENDCLASS.