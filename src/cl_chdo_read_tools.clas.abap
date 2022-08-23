CLASS cl_chdo_read_tools DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_r_objectid_line,
      sign TYPE c LENGTH 1,
      option TYPE c LENGTH 2,
      low TYPE c LENGTH 90,
      high TYPE c LENGTH 90,
      END OF ty_r_objectid_line.
    TYPES: BEGIN OF ty_cdreaddd_line,
      objectclas TYPE c LENGTH 15,
      objectid TYPE c LENGTH 90,
      objectid_db TYPE c LENGTH 90,
      changenr TYPE c LENGTH 10,
      objecttxt TYPE c LENGTH 350,
      username TYPE c LENGTH 12,
      username_db TYPE c LENGTH 12,
      udate TYPE d,
      udate_db TYPE d,
      utime TYPE t,
      utime_db TYPE t,
      tcode TYPE c LENGTH 20,
      applname TYPE c LENGTH 40,
      appltype TYPE c LENGTH 2,
      tabname TYPE c LENGTH 30,
      tabname_db TYPE c LENGTH 30,
      tabkey TYPE c LENGTH 70,
      tabkey_db TYPE c LENGTH 70,
      keylen TYPE n LENGTH 4,
      chngind TYPE c LENGTH 1,
      fname TYPE c LENGTH 30,
      fname_db TYPE c LENGTH 30,
      ftext TYPE c LENGTH 60,
      textart TYPE c LENGTH 4,
      sprache TYPE c LENGTH 1,
      text_case TYPE c LENGTH 1,
      outlen TYPE n LENGTH 4,
      f_old TYPE c LENGTH 254,
      f_old_db TYPE c LENGTH 254,
      f_new TYPE c LENGTH 254,
      f_new_db TYPE c LENGTH 254,
      value_old TYPE string,
      value_old_db TYPE string,
      value_new TYPE string,
      value_new_db TYPE string,
      value_rawstr_old TYPE xstring,
      value_rawstr_old_db TYPE xstring,
      value_rawstr_new TYPE xstring,
      value_rawstr_new_db TYPE xstring,
      value_shstr_old TYPE string,
      value_shstr_old_db TYPE string,
      value_shstr_new TYPE string,
      value_shstr_new_db TYPE string,
      keyguid TYPE c LENGTH 32,
      tabkey254 TYPE c LENGTH 254,
      tabkey254_db TYPE c LENGTH 254,
      ext_keylen TYPE n LENGTH 4,
      keyguid_str TYPE c LENGTH 32,
      version TYPE c LENGTH 3,
      END OF ty_cdreaddd_line.
    TYPES:
      tt_cdredadd_tab TYPE STANDARD TABLE OF ty_cdreaddd_line.
    TYPES:
      tt_r_objectid TYPE STANDARD TABLE OF ty_r_objectid_line.
    TYPES:
      ty_r_user_line TYPE RANGE OF sy-uname.
    TYPES:
      tt_r_user TYPE STANDARD TABLE OF ty_r_user_line.
    TYPES:
      BEGIN OF ty_attributes,
        local_time  TYPE abap_bool,
        time_zone   TYPE c LENGTH 6,
        it_changenr TYPE RANGE OF string,
      END OF ty_attributes.
    CLASS-METHODS changedocument_read
      IMPORTING
        !i_objectclass    TYPE if_chdo_object_tools_rel=>ty_cdobjectcl
        !it_objectid      TYPE tt_r_objectid OPTIONAL
        !i_date_of_change TYPE if_chdo_object_tools_rel=>ty_cddatum OPTIONAL
        !i_time_of_change TYPE if_chdo_object_tools_rel=>ty_cduzeit OPTIONAL
        !i_date_until     TYPE if_chdo_object_tools_rel=>ty_cddatum OPTIONAL
        !i_time_until     TYPE if_chdo_object_tools_rel=>ty_cduzeit OPTIONAL
        !it_username      TYPE tt_r_user OPTIONAL
        !is_read_options  TYPE ty_attributes OPTIONAL
      EXPORTING
        !et_cdredadd_tab  TYPE tt_cdredadd_tab
      RAISING
        cx_chdo_read_error.
ENDCLASS.

CLASS cl_chdo_read_tools IMPLEMENTATION.
ENDCLASS.