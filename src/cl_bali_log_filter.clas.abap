CLASS cl_bali_log_filter DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_bali_log_filter.

    ALIASES get_all_values
      FOR if_bali_log_filter~get_all_values.
    ALIASES set_create_info
      FOR if_bali_log_filter~set_create_info.
    ALIASES set_descriptor
      FOR if_bali_log_filter~set_descriptor.
    ALIASES set_maximum_log_number
      FOR if_bali_log_filter~set_maximum_log_number.
    ALIASES set_time_interval
      FOR if_bali_log_filter~set_time_interval.
    ALIASES ty_external_id
      FOR if_bali_log_filter~ty_external_id.
    ALIASES ty_external_id_table
      FOR if_bali_log_filter~ty_external_id_table.
    ALIASES ty_max_log_number
      FOR if_bali_log_filter~ty_max_log_number.
    ALIASES ty_object
      FOR if_bali_log_filter~ty_object.
    ALIASES ty_object_table
      FOR if_bali_log_filter~ty_object_table.
    ALIASES ty_subobject
      FOR if_bali_log_filter~ty_subobject.
    ALIASES ty_subobject_table
      FOR if_bali_log_filter~ty_subobject_table.
    ALIASES ty_timestamp
      FOR if_bali_log_filter~ty_timestamp.
    ALIASES ty_time_interval
      FOR if_bali_log_filter~ty_time_interval.
    ALIASES ty_user
      FOR if_bali_log_filter~ty_user.
    ALIASES ty_user_table
      FOR if_bali_log_filter~ty_user_table.
    CLASS-METHODS create
      RETURNING
      VALUE(filter) TYPE REF TO if_bali_log_filter.
ENDCLASS.

CLASS cl_bali_log_filter IMPLEMENTATION.
ENDCLASS.