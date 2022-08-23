INTERFACE if_xco_package PUBLIC.
  INTERFACES:
    if_xco_ar_object,
    if_xco_ar_object_source,

    if_xco_cts_change_target,

    if_xco_printable.

  TYPES:
    BEGIN OF ts_object_property,
      application_component       TYPE REF TO if_xco_application_component,
      super_package               TYPE REF TO if_xco_package,
      package_type                TYPE REF TO cl_xco_pkg_type,
      adding_objects_not_possible TYPE abap_bool,
      encapsulated                TYPE abap_bool,
      transport_layer             TYPE REF TO if_xco_transport_layer,
      software_component          TYPE REF TO if_xco_software_component,
      record_object_changes       TYPE abap_bool,
    END OF ts_object_property,
    BEGIN OF ts_object,
      property TYPE ts_object_property,
    END OF ts_object.

  ALIASES:
    exists FOR if_xco_ar_object~exists.

  DATA:
    name TYPE sxco_package READ-ONLY.

  METHODS:
    read
      RETURNING
        VALUE(rs_package) TYPE ts_object.
ENDINTERFACE.