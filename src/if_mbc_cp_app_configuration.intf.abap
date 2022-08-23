INTERFACE if_mbc_cp_app_configuration
  PUBLIC.
  CONSTANTS:
    BEGIN OF table_type,
      responsive_table  TYPE string VALUE 'foobar',
      grid_table        TYPE string VALUE 'foobar',
    END OF table_type,
    BEGIN OF section_layout,
      page  TYPE string VALUE 'foobar',
      tabs  TYPE string VALUE 'foobar',
    END OF section_layout,
    BEGIN OF creation_mode_name,
      new_page      TYPE string VALUE 'foobar',
      inline        TYPE string VALUE 'foobar',
      creation_row  TYPE string VALUE 'foobar',
    END OF creation_mode_name,
    BEGIN OF initial_load,
      enabled   TYPE string VALUE 'foobar',
      disabled  TYPE string VALUE 'foobar',
      auto      TYPE string VALUE 'foobar',
    END OF initial_load.
  TYPES:
    personalization TYPE not_released,
    creation_mode   TYPE not_released,
    BEGIN OF object_page.
  TYPES entity                  TYPE string.
  TYPES editable_header_content TYPE abap_bool.
  TYPES condensed_table_layout  TYPE abap_bool.
  TYPES disable_paste           TYPE abap_bool.
  TYPES enable_full_screen      TYPE abap_bool.
  TYPES:
      type            TYPE not_released,
      sectionlayout   TYPE string,
      personalization TYPE personalization,
      creation_mode   TYPE creation_mode,
    END OF object_page,

    BEGIN OF list_report,
      initial_load           TYPE string,
      type                   TYPE not_released,
      condensed_table_layout TYPE abap_bool,
      personalization        TYPE personalization,
    END OF list_report,
    object_pages TYPE SORTED TABLE OF object_page WITH UNIQUE KEY entity,
    BEGIN OF settings,
      list_report  TYPE list_report,
      object_pages TYPE object_pages,
    END OF settings.
ENDINTERFACE.