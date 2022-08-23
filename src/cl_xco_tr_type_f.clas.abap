CLASS cl_xco_tr_type_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      workbench_request              TYPE REF TO cl_xco_tr_type READ-ONLY,
      customizing_request            TYPE REF TO cl_xco_tr_type READ-ONLY,
      relocation_of_objs_wo_pkg_chng TYPE REF TO cl_xco_tr_type READ-ONLY,
      relocation_of_objs_w_pkg_chng  TYPE REF TO cl_xco_tr_type READ-ONLY,
      relocation_of_complete_package TYPE REF TO cl_xco_tr_type READ-ONLY,
      transport_of_copies            TYPE REF TO cl_xco_tr_type READ-ONLY,
      development_correction         TYPE REF TO cl_xco_tr_type READ-ONLY,
      repair                         TYPE REF TO cl_xco_tr_type READ-ONLY,
      unclassified_task              TYPE REF TO cl_xco_tr_type READ-ONLY,
      customizing_task               TYPE REF TO cl_xco_tr_type READ-ONLY,
      piece_list_for_cts_project     TYPE REF TO cl_xco_tr_type READ-ONLY,
      client_transport_request       TYPE REF TO cl_xco_tr_type READ-ONLY,
      piece_list_for_upgrade         TYPE REF TO cl_xco_tr_type READ-ONLY,
      piece_list_for_support_package TYPE REF TO cl_xco_tr_type READ-ONLY,
      piece_list                     TYPE REF TO cl_xco_tr_type READ-ONLY,
      deletion_transport             TYPE REF TO cl_xco_tr_type READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                 TYPE cl_xco_tr_type=>tv_value
        RETURNING
          VALUE(ro_transport_type) TYPE REF TO cl_xco_tr_type.

ENDCLASS.

CLASS cl_xco_tr_type_f IMPLEMENTATION.
ENDCLASS.