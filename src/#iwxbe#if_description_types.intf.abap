INTERFACE /iwxbe/if_description_types
  PUBLIC.

  TYPES:
    ty_e_external_data_type  TYPE c LENGTH 20,
    ty_e_external_name       TYPE c LENGTH 128,
    ty_e_topic               TYPE c LENGTH 255,
    ty_e_type_name           TYPE c LENGTH 30,
    ty_e_value_control_value TYPE c LENGTH 1,
    BEGIN OF ty_s_description_key,
      type_kind     TYPE c,
      repository_id TYPE c LENGTH 10,
      id            TYPE c LENGTH 36,
      version       TYPE n LENGTH 4,
    END OF ty_s_description_key,
    BEGIN OF ty_s_documentation_property,
      key   TYPE string,
      value TYPE string,
    END OF ty_s_documentation_property,
    ty_t_documentation_property TYPE SORTED TABLE OF ty_s_documentation_property WITH UNIQUE KEY key,
    BEGIN OF ty_s_ktd_header_key,
      name    TYPE c LENGTH 30,
      version TYPE c LENGTH 1,
    END OF ty_s_ktd_header_key,
    BEGIN OF ty_s_documentation_reference,
      id     TYPE c LENGTH 2,
      object TYPE c LENGTH 60,
      text   TYPE string,
      ktd    TYPE ty_s_ktd_header_key,
    END OF ty_s_documentation_reference,
    BEGIN OF ty_s_ktd_content_key,
      name    TYPE c LENGTH 30,
      version TYPE c,
      langu   TYPE c,
    END OF ty_s_ktd_content_key,
    BEGIN OF ty_s_payload_property_r,
      name     TYPE ty_e_type_name,
      instance TYPE REF TO not_released,
    END OF ty_s_payload_property_r,
    ty_t_payload_property_r TYPE SORTED TABLE OF ty_s_payload_property_r WITH UNIQUE KEY name,
    BEGIN OF ty_s_payload_type,
      name     TYPE ty_e_type_name,
      instance TYPE REF TO not_released,
    END OF ty_s_payload_type,
    ty_t_payload_type TYPE SORTED TABLE OF ty_s_payload_type WITH NON-UNIQUE KEY instance,
    BEGIN OF ty_s_complex_property,
      name     TYPE ty_e_type_name,
      instance TYPE REF TO not_released,
    END OF ty_s_complex_property,
    ty_t_complex_property TYPE SORTED TABLE OF ty_s_complex_property WITH UNIQUE KEY name,
    BEGIN OF ty_s_topic,
      id       TYPE i,
      segment  TYPE ty_e_topic,
      instance TYPE REF TO not_released,
    END OF ty_s_topic,
    ty_t_topic        TYPE SORTED TABLE OF ty_s_topic WITH UNIQUE KEY id
                                               WITH NON-UNIQUE SORTED KEY segment COMPONENTS segment,
    ty_t_topic_filter TYPE STANDARD TABLE OF /iwxbe/if_description_types=>ty_e_topic WITH DEFAULT KEY,
    BEGIN OF ty_s_producer_features,
      incl_producer_in_subnamespace TYPE abap_bool,
    END OF ty_s_producer_features.

  CONSTANTS:
    BEGIN OF gcs_description_type_kind,
      consume TYPE c VALUE 'C',
      produce TYPE c VALUE 'P',
    END OF gcs_description_type_kind,
    BEGIN OF gcs_external_data_types,  " V4 primitive types (removed V2 types: DateTime, Time, Float) (ABAP: see type group "ODEDM")
      binary         TYPE ty_e_external_data_type VALUE 'Binary', "#EC NOTEXT " Binary data (ABAP: XSTRING, HEX)
      boolean        TYPE ty_e_external_data_type VALUE 'Boolean', "#EC NOTEXT " Binary-valued logic (ABAP: char)
      byte           TYPE ty_e_external_data_type VALUE 'Byte', "#EC NOTEXT " Unsigned 8-bit integer (ABAP: INT1, NUM, HEX)
      date           TYPE ty_e_external_data_type VALUE 'Date', "#EC NOTEXT " Date without a time-zone offset (ABAP: PACKED(8,0/11,7), DATE)
      datetimeoffset TYPE ty_e_external_data_type VALUE 'DateTimeOffset', "#EC NOTEXT " Date and time with a time-zone offset, no leap seconds
      " (ABAP: PACKED(8,0/11,7,14,12), DATE, TIME)
      decimal        TYPE ty_e_external_data_type VALUE 'Decimal', "#EC NOTEXT  " Numeric values with fixed precision and scale
      " (ABAP: PACKED, CHAR, DECFLOAT16+DECFLOAT34(7.02), STRING)
      double         TYPE ty_e_external_data_type VALUE 'Double', "#EC NOTEXT   " IEEE 754 binary64 floating-point number (15-17 decimal digits)
      " (ABAP: FLOAT, DECFLOAT16+DECFLOAT34(7.02), STRING, CHAR)
      duration       TYPE ty_e_external_data_type VALUE 'Duration', "#EC NOTEXT " Signed duration in days, hours, minutes, and (sub)seconds
      " (ABAP: PACKED, DECFLOAT16+DECFLOAT34(7.02))
      guid           TYPE ty_e_external_data_type VALUE 'Guid', "#EC NOTEXT  " 16-byte (128-bit) unique identifier (ABAP: CHAR, HEX)
      int16          TYPE ty_e_external_data_type VALUE 'Int16', "#EC NOTEXT  " Signed 16-bit integer (ABAP: INT1, INT2, INT, NUM)
      int32          TYPE ty_e_external_data_type VALUE 'Int32', "#EC NOTEXT  " Signed 32-bit integer (ABAP: INT1, INT2, INT, NUM)
      int64          TYPE ty_e_external_data_type VALUE 'Int64', "#EC NOTEXT  " Signed 64-bit integer
      " (ABAP: PACKED, NUM, DECFLOAT16+DECFLOAT34(7.02),INT1, INT2, INT)
      sbyte          TYPE ty_e_external_data_type VALUE 'SByte', "#EC NOTEXT  " Signed 8-bit integer (ABAP: INT1, INT2, INT, NUM)
      single         TYPE ty_e_external_data_type VALUE 'Single', "#EC NOTEXT  " IEEE 754 binary32 floating-point number (6-9 decimal digits)
      " (ABAP: FLOAT, DECFLOAT16+DECFLOAT34(7.02), CHAR)
      stream         TYPE ty_e_external_data_type VALUE 'Stream', "#EC NOTEXT  " Binary data stream (ABAP: n/a) / Currently not supported by Odata Lib
      string         TYPE ty_e_external_data_type VALUE 'String', "#EC NOTEXT  " Sequence of UTF-8 characters (ABAP: all)
      timeofday      TYPE ty_e_external_data_type VALUE 'TimeOfDay', "#EC NOTEXT " Clock time 00:00-23:59:59.999999999999
      " (ABAP: PACKED, DECFLOAT16+DECFLOAT34(7.02), TIME)
    END OF gcs_external_data_types,
    BEGIN OF gcs_value_control,
      indicate_value TYPE ty_e_value_control_value VALUE ' ' ##NO_TEXT,
      indicate_null  TYPE ty_e_value_control_value VALUE 'X' ##NO_TEXT,
      indicate_omit  TYPE ty_e_value_control_value VALUE '-' ##NO_TEXT,
    END OF gcs_value_control.
ENDINTERFACE.