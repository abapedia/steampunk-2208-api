INTERFACE if_xco_cp_i18n_me_target_fctry PUBLIC.
  METHODS:
    entity
      IMPORTING
        iv_metadata_extension_name TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_entity)           TYPE REF TO if_xco_i18n_me_ent_target,

    parameter
      IMPORTING
        iv_metadata_extension_name TYPE sxco_cds_object_name
        iv_parameter_name          TYPE sxco_cds_parameter_name
      RETURNING
        VALUE(ro_parameter)        TYPE REF TO if_xco_i18n_me_prm_target,

    field
      IMPORTING
        iv_metadata_extension_name TYPE sxco_cds_object_name
        iv_field_name              TYPE sxco_cds_field_name
      RETURNING
        VALUE(ro_field)            TYPE REF TO if_xco_i18n_me_fld_target.
ENDINTERFACE.