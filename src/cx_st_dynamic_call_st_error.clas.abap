CLASS cx_st_dynamic_call_st_error DEFINITION
  PUBLIC
  INHERITING FROM cx_st_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_dynamic_call_st_error TYPE c LENGTH 32 VALUE '005056A207C81EE28FEFA00D9443C9EF'. "#EC NOTEXT
    CONSTANTS incompatible_parameter TYPE c LENGTH 32 VALUE '005056A207C81EE28FEFA546B48709F0'. "#EC NOTEXT
    CONSTANTS incompatible_root TYPE c LENGTH 32 VALUE '005056A207C81EE28FEFA546B48729F0'. "#EC NOTEXT
    CONSTANTS incompatible_template_param TYPE c LENGTH 32 VALUE '005056A207C81EE28FEFA546B48769F0'. "#EC NOTEXT
    CONSTANTS incompatible_template_root TYPE c LENGTH 32 VALUE '005056A207C81EE28FEFA561958109F0'. "#EC NOTEXT
    CONSTANTS out_parameter_with_value TYPE c LENGTH 32 VALUE '005056A207C81EE28FEFA546B48749F0'. "#EC NOTEXT
    DATA root_name TYPE string READ-ONLY.
    DATA st_template TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !st_progname TYPE string OPTIONAL
      !xml_offset TYPE i OPTIONAL
      !xml_path TYPE string OPTIONAL
      !st_ic TYPE i OPTIONAL
      !st_timestamp TYPE scx_st_tstamp OPTIONAL
      !root_name TYPE string OPTIONAL
      !st_template TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_st_dynamic_call_st_error IMPLEMENTATION.
ENDCLASS.