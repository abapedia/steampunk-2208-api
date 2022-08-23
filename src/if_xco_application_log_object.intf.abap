INTERFACE if_xco_application_log_object PUBLIC.
  INTERFACES:
    if_xco_ar_object.

  DATA:
    name       TYPE sxco_aplo_object_name READ-ONLY,
    subobjects TYPE REF TO if_xco_aplo_subobjects_factory READ-ONLY.

  METHODS:
    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_aplo_content,
    subobject
      IMPORTING
        iv_name             TYPE if_xco_aplo_subobject=>tv_name
      RETURNING
        VALUE(ro_subobject) TYPE REF TO if_xco_aplo_subobject.
ENDINTERFACE.