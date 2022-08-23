
INTERFACE if_fdt_types
  PUBLIC.

  TYPES rel TYPE string.
  TYPES quantity_dimension TYPE c LENGTH 20.
  TYPES day_of_week TYPE fdt_day_of_week.
  TYPES access_level TYPE c LENGTH 6.
  TYPES esr_path TYPE string.
  TYPES proxy_path TYPE string.
  TYPES timepoint_type TYPE n LENGTH 1.
  TYPES element_boolean TYPE c.
  TYPES element_currency TYPE c LENGTH 5.
  TYPES element_number TYPE n LENGTH 34.
  TYPES element_text TYPE string.
  TYPES element_unit TYPE c LENGTH 3.
  TYPES: BEGIN OF element_amount,
    number TYPE n LENGTH 34,
    currency TYPE c LENGTH 5,
    END OF element_amount.
  TYPES: BEGIN OF element_quantity,
    number TYPE n LENGTH 34,
    unit TYPE c LENGTH 3,
    END OF element_quantity.
  TYPES: BEGIN OF element_timepoint,
    date TYPE d,
    time TYPE t,
    timestamp TYPE p LENGTH 15 DECIMALS 0,
    offset_time TYPE c LENGTH 3,
    offset_sign TYPE c LENGTH 1,
    type TYPE n LENGTH 1,
    END OF element_timepoint.
  TYPES name TYPE c LENGTH 30.
  TYPES activity TYPE n LENGTH 1.
  TYPES data_object_type TYPE c.
  TYPES element_type TYPE c.
  TYPES id TYPE c LENGTH 32.
  TYPES object_type TYPE c LENGTH 2.
  TYPES state TYPE c.
  TYPES version TYPE n LENGTH 6.
  TYPES timestamp TYPE p LENGTH 15 DECIMALS 0.
  TYPES trace_mode TYPE c.
  TYPES ui_mode TYPE n LENGTH 1.
  TYPES:
    t_object_id TYPE TABLE OF if_fdt_types=>id
      WITH DEFAULT KEY.
  TYPES:
    BEGIN OF s_message,
      id          TYPE id,
      object_type TYPE object_type,
      msgid       TYPE symsgid,
      msgty       TYPE symsgty,
      msgno       TYPE symsgno,
      msgv1       TYPE symsgv,
      msgv2       TYPE symsgv,
      msgv3       TYPE symsgv,
      msgv4       TYPE symsgv,
      text        TYPE c LENGTH 250,
      source      TYPE string,
      related_id  TYPE id, "might be used or referenced by ID.
      t_path      TYPE t_object_id,
      r_ref       TYPE REF TO data,
    END OF s_message.
  TYPES:
    t_message TYPE STANDARD TABLE OF if_fdt_types=>s_message
      WITH NON-UNIQUE KEY id object_type.
  TYPES short_text TYPE c LENGTH 20.
  TYPES:
    BEGIN OF s_short_text,
      langu      TYPE langu,
      short_text TYPE if_fdt_types=>short_text,
    END OF s_short_text.
  TYPES:
    ts_short_text TYPE SORTED TABLE OF if_fdt_types=>s_short_text
      WITH UNIQUE KEY langu.
  TYPES text TYPE c LENGTH 80.
  TYPES:
    BEGIN OF s_text,
      langu TYPE langu,
      text  TYPE if_fdt_types=>text,
    END OF s_text.
  TYPES:
    ts_text TYPE SORTED TABLE OF if_fdt_types=>s_text
      WITH UNIQUE KEY langu.
  TYPES:
    BEGIN OF s_usage,
      client                TYPE mandt, "only valid for SYSTEM_OBJECT = ABAP_FALSE
      id                    TYPE if_fdt_types=>id,
      version               TYPE if_fdt_types=>version,
      object_type           TYPE if_fdt_types=>object_type,
      is_system_object      TYPE abap_bool,
      is_customizing_object TYPE abap_bool,
    END OF s_usage.
  TYPES:
    ts_usage TYPE SORTED TABLE OF if_fdt_types=>s_usage
      WITH UNIQUE KEY client id version.
  TYPES:
    th_usage TYPE HASHED TABLE OF if_fdt_types=>s_usage
      WITH UNIQUE KEY client id version.
  TYPES:
    BEGIN OF s_rule_version,
      rule_id TYPE if_fdt_types=>id,
      version TYPE if_fdt_types=>version,
    END OF s_rule_version.
  TYPES:
    ts_rule_version TYPE SORTED TABLE OF if_fdt_types=>s_rule_version
      WITH UNIQUE KEY rule_id version.
  TYPES:
    ts_object_id TYPE SORTED TABLE OF if_fdt_types=>id
      WITH UNIQUE DEFAULT KEY.
  TYPES:
    th_object_id TYPE HASHED TABLE OF if_fdt_types=>id
      WITH UNIQUE DEFAULT KEY.
  TYPES:
    t_object_type TYPE STANDARD TABLE OF object_type WITH DEFAULT KEY.
  TYPES:
    t_data_object_type TYPE STANDARD TABLE OF data_object_type WITH DEFAULT KEY.
  TYPES:
    t_element_type TYPE STANDARD TABLE OF element_type WITH DEFAULT KEY.
  TYPES:
    source_code TYPE c LENGTH 255.
  TYPES:
    t_source_code TYPE STANDARD TABLE OF source_code WITH DEFAULT KEY.
  TYPES:
    BEGIN OF s_used_context_id,
      id          TYPE if_fdt_types=>id,
      is_optional TYPE abap_bool,
    END OF s_used_context_id.
  TYPES:
    ts_used_context_id TYPE SORTED TABLE OF s_used_context_id
                                       WITH UNIQUE KEY id.
  TYPES:
    BEGIN OF s_id_value,
      id    TYPE c LENGTH 32,
      value TYPE REF TO data,
    END OF s_id_value.
  TYPES:
    ts_id_value TYPE TABLE OF s_id_value
                           WITH NON-UNIQUE KEY id.
  TYPES:
    BEGIN OF s_name_value,
      name  TYPE name,
      value TYPE REF TO data,
    END OF s_name_value.
  TYPES:
    t_name_value TYPE STANDARD TABLE OF s_name_value.
  TYPES:
    BEGIN OF s_text_symbol,
      program TYPE c LENGTH 40,
      key     TYPE c LENGTH 8,
    END OF s_text_symbol.
  TYPES:
    BEGIN OF s_sapscript_object,
      id     TYPE c LENGTH 2,
      object TYPE c LENGTH 60,
    END OF s_sapscript_object.
  TYPES msg_severity TYPE c.
  TYPES:
    BEGIN OF s_id_name,
      id   TYPE c LENGTH 32,
      name TYPE name,
    END OF s_id_name.
  TYPES:
    t_id_name TYPE STANDARD TABLE OF s_id_name.
  TYPES:
    ts_id_name TYPE SORTED TABLE OF s_id_name WITH UNIQUE KEY id.
  TYPES:
    BEGIN OF s_ids_for_id,
      id           TYPE if_fdt_types=>id,
      th_object_id TYPE if_fdt_types=>th_object_id,
    END OF s_ids_for_id.
  TYPES:
    th_ids_for_id TYPE HASHED TABLE OF s_ids_for_id
           WITH UNIQUE KEY id.
  TYPES:
    t_version TYPE STANDARD TABLE OF version WITH DEFAULT KEY.
  TYPES:
    sub_activity(2) TYPE n.
  TYPES:
    BEGIN OF s_sub_activity,
      sub_activity TYPE sub_activity,
      id           TYPE if_fdt_types=>id,
    END OF s_sub_activity.

  TYPES:
    BEGIN OF s_brf_usage,
      app_name   TYPE if_fdt_types=>name,
      app_type   TYPE c LENGTH 4,
      app_status TYPE if_fdt_types=>state,
    END OF s_brf_usage.
  TYPES:
    t_brf_usage TYPE STANDARD TABLE OF s_brf_usage.
ENDINTERFACE.