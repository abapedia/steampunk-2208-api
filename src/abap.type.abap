
TYPES:
  abap_bool TYPE c LENGTH 1.
CONSTANTS:
  abap_true      TYPE abap_bool VALUE 'X',
  abap_false     TYPE abap_bool VALUE ' ',
  abap_undefined TYPE abap_bool VALUE '-',
  abap_on        TYPE abap_bool VALUE 'X',
  abap_off       TYPE abap_bool VALUE ' '.

CONSTANTS:
  abap_max_abs_type_name_ln   TYPE i VALUE        200,
  abap_max_class_name_ln      TYPE i VALUE         30,
  abap_max_intf_name_ln       TYPE i VALUE         30,
  abap_max_comp_name_ln       TYPE i VALUE         30,
  abap_max_key_name_ln        TYPE i VALUE        255,
  abap_max_class_comp_name_ln TYPE i VALUE         61,
  abap_max_edit_mask_ln       TYPE i VALUE          7,
  abap_max_help_id_ln         TYPE i VALUE         62,
  abap_max_db_string_ln       TYPE i VALUE  536870912,
  abap_max_db_rawstring_ln    TYPE i VALUE 1073741824.

TYPES:
  abap_typekind       TYPE c LENGTH 1, " check CL_ABAP_TYPEDESCR for values
  abap_typecategory   TYPE c LENGTH 1, " check CL_ABAP_TYPEDESCR for values
  abap_typepropkind   TYPE c LENGTH 1,
  abap_structkind     TYPE c LENGTH 1,
  abap_tablekind      TYPE c LENGTH 1,
  abap_keydefkind     TYPE c LENGTH 1,
  abap_classkind      TYPE c LENGTH 1,
  abap_intfkind       TYPE c LENGTH 1,
  abap_parmkind       TYPE c LENGTH 1,
  abap_editmask   TYPE c LENGTH abap_max_edit_mask_ln,
  abap_helpid     TYPE c LENGTH abap_max_help_id_ln,
  abap_visibility TYPE c LENGTH 1,
  abap_typename    TYPE c LENGTH abap_max_class_comp_name_ln,
  abap_abstypename TYPE c LENGTH abap_max_abs_type_name_ln,
  abap_compname    TYPE c LENGTH abap_max_comp_name_ln,
  abap_keyname     TYPE c LENGTH abap_max_key_name_ln,
  abap_keycompname TYPE          abap_keyname,
  abap_classname   TYPE c LENGTH abap_max_class_name_ln,
  abap_intfname    TYPE c LENGTH abap_max_intf_name_ln,
  abap_attrname    TYPE c LENGTH abap_max_class_comp_name_ln,
  abap_methname    TYPE c LENGTH abap_max_class_comp_name_ln,
  abap_evntname    TYPE c LENGTH abap_max_class_comp_name_ln,
  abap_parmname    TYPE c LENGTH abap_max_comp_name_ln,
  abap_excpname    TYPE c LENGTH abap_max_comp_name_ln,
  BEGIN OF abap_compdescr,
    length    TYPE i,
    decimals  TYPE i,
    type_kind TYPE abap_typekind,
    name      TYPE abap_compname,
  END OF abap_compdescr,
  abap_compdescr_tab TYPE STANDARD TABLE OF abap_compdescr
                     WITH KEY name,
  BEGIN OF abap_componentdescr,
    name       TYPE string,
    type       TYPE REF TO cl_abap_datadescr,
    as_include TYPE abap_bool,
    suffix     TYPE string,
  END OF abap_componentdescr,
  abap_component_tab TYPE STANDARD TABLE OF abap_componentdescr
                     WITH KEY name,
  BEGIN OF abap_simple_componentdescr,
    name       TYPE string,
    type       TYPE REF TO cl_abap_datadescr,
  END OF abap_simple_componentdescr,
  abap_component_symbol_tab TYPE HASHED TABLE OF abap_simple_componentdescr
                            WITH UNIQUE KEY name,
  abap_component_view_tab TYPE STANDARD TABLE OF abap_simple_componentdescr
                          WITH KEY name,
  BEGIN OF abap_keydescr,
    name TYPE abap_keyname,
  END OF abap_keydescr,
  abap_keydescr_tab TYPE STANDARD TABLE OF abap_keydescr
                    WITH KEY name,
  BEGIN OF abap_table_keycompdescr,
    name TYPE abap_keycompname,
  END OF abap_table_keycompdescr,
  BEGIN OF abap_table_keydescr,
    components      TYPE STANDARD TABLE OF abap_table_keycompdescr
                         WITH NON-UNIQUE DEFAULT KEY
                         INITIAL SIZE 4,
    name            TYPE abap_compname,
    is_primary      TYPE abap_bool,
    access_kind     TYPE abap_tablekind,
    is_unique       TYPE abap_bool,
    key_kind        TYPE abap_keydefkind,
  END OF abap_table_keydescr,
  abap_table_keydescr_tab TYPE STANDARD TABLE OF abap_table_keydescr
                          WITH NON-UNIQUE KEY name
                          INITIAL SIZE 2,
  BEGIN OF abap_key_alias_pair,
    name  TYPE abap_compname,
    alias TYPE abap_compname,
  END OF abap_key_alias_pair,
  abap_key_alias_map TYPE SORTED TABLE OF abap_key_alias_pair
                          WITH NON-UNIQUE KEY name
                          WITH UNIQUE SORTED KEY key_alias COMPONENTS alias
                          INITIAL SIZE 2,
  BEGIN OF abap_parmdescr,
    length        TYPE i,
    decimals      TYPE i,
    type_kind     TYPE abap_typekind,
    name          TYPE abap_parmname,
    parm_kind     TYPE abap_parmkind,
    by_value      TYPE abap_bool,
    is_optional   TYPE abap_bool,
  END OF abap_parmdescr,
  abap_parmdescr_tab TYPE STANDARD TABLE OF abap_parmdescr
                     WITH KEY name,
  BEGIN OF abap_excpdescr,
    name TYPE abap_excpname,
    is_resumable TYPE abap_bool, "abap_false for old exceptions,
                                 "abap_true or abap_false for class based exceptions
  END OF abap_excpdescr,
  abap_excpdescr_tab TYPE STANDARD TABLE OF abap_excpdescr
                     WITH KEY name,
  BEGIN OF abap_frnddescr,
    name TYPE abap_classname,
  END OF abap_frnddescr,
  abap_frnddescr_tab TYPE STANDARD TABLE OF abap_frnddescr
                     WITH KEY name,
  BEGIN OF abap_intfdescr,
    name           TYPE abap_intfname,
    is_inherited   TYPE abap_bool,
  END OF abap_intfdescr,
  abap_intfdescr_tab TYPE STANDARD TABLE OF abap_intfdescr
                     WITH KEY name,
  BEGIN OF abap_typedef,
    name           TYPE abap_typename,
    alias_for      TYPE abap_typename,
    visibility     TYPE abap_visibility,
    is_interface   TYPE abap_bool,
    is_inherited   TYPE abap_bool,
  END OF abap_typedef,
  abap_typedef_tab TYPE STANDARD TABLE OF abap_typedef
                     WITH KEY name,
  BEGIN OF abap_attrdescr,
    length         TYPE i,
    decimals       TYPE i,
    name           TYPE abap_attrname,
    type_kind      TYPE abap_typekind,
    visibility     TYPE abap_visibility,
    is_interface   TYPE abap_bool,
    is_inherited   TYPE abap_bool,
    is_class       TYPE abap_bool,
    is_constant    TYPE abap_bool,
    is_virtual     TYPE abap_bool,
    is_read_only   TYPE abap_bool,
    alias_for      TYPE abap_attrname,
  END OF abap_attrdescr,
  abap_attrdescr_tab TYPE STANDARD TABLE OF abap_attrdescr
                     WITH KEY name,
  BEGIN OF abap_methdescr,
    parameters       TYPE abap_parmdescr_tab,
    exceptions       TYPE abap_excpdescr_tab,
    name             TYPE abap_methname,
    for_event        TYPE abap_evntname,
    of_class         TYPE abap_classname,
    visibility       TYPE abap_visibility,
    is_interface     TYPE abap_bool,
    is_inherited     TYPE abap_bool,
    is_redefined     TYPE abap_bool,
    is_abstract      TYPE abap_bool,
    is_final         TYPE abap_bool,
    is_class         TYPE abap_bool,
    alias_for        TYPE abap_methname,
    is_raising_excps TYPE abap_bool, "abap_true if method declaration has a raising clause
                                     "abap_false otherwise
  END OF abap_methdescr,
  abap_methdescr_tab TYPE STANDARD TABLE OF abap_methdescr
                     WITH KEY name,
  BEGIN OF abap_evntdescr,
    parameters    TYPE abap_parmdescr_tab,
    name          TYPE abap_evntname,
    visibility    TYPE abap_visibility,
    is_interface  TYPE abap_bool,
    is_inherited  TYPE abap_bool,
    is_class      TYPE abap_bool,
    alias_for     TYPE abap_evntname,
  END OF abap_evntdescr,
  abap_evntdescr_tab TYPE STANDARD TABLE OF abap_evntdescr
                     WITH KEY name,

  abap_frndtypes_tab TYPE STANDARD TABLE OF REF TO cl_abap_typedescr
                     WITH KEY table_line.

TYPES:
  BEGIN OF abap_func_parmbind,
    value     TYPE REF TO data,
    tables_wa TYPE REF TO data,
    kind      TYPE i,
    name      TYPE abap_parmname,
  END OF abap_func_parmbind,
  abap_func_parmbind_tab TYPE SORTED TABLE OF abap_func_parmbind
                         WITH UNIQUE KEY kind name,
  BEGIN OF abap_func_excpbind,
    message TYPE REF TO data,
    value   TYPE i,
    name    TYPE abap_excpname,
  END OF abap_func_excpbind,
  abap_func_excpbind_tab TYPE HASHED TABLE OF abap_func_excpbind
                         WITH UNIQUE KEY name.

CONSTANTS:
  abap_func_exporting TYPE abap_func_parmbind-kind VALUE 10,
  abap_func_importing TYPE abap_func_parmbind-kind VALUE 20,
  abap_func_tables    TYPE abap_func_parmbind-kind VALUE 30,
  abap_func_changing  TYPE abap_func_parmbind-kind VALUE 40.

TYPES:
  BEGIN OF abap_parmbind,
    name  TYPE abap_parmname,
    kind  TYPE abap_parmkind,
    value TYPE REF TO data,
  END OF abap_parmbind,
  abap_parmbind_tab TYPE HASHED TABLE OF abap_parmbind
                    WITH UNIQUE KEY name,
  BEGIN OF abap_excpbind,
    name  TYPE abap_excpname,
    value TYPE i,
  END OF abap_excpbind,
  abap_excpbind_tab TYPE HASHED TABLE OF abap_excpbind
                    WITH UNIQUE KEY name.

TYPES:
  abap_char1(1)              TYPE c,
  abap_cr_lf(2)              TYPE c,
  abap_byte_order_mark(2)    TYPE x,
  abap_byte_order_utf8(3)    TYPE x.

TYPES:
  abap_encoding TYPE abap_encod,
  abap_endian TYPE c.

TYPES:
  abap_trans_parmname  TYPE string,
  abap_trans_parmvalue TYPE string,
  abap_trans_parmref   TYPE REF TO data.

TYPES:
  BEGIN OF abap_trans_parmbind,
    name  TYPE abap_trans_parmname,
    value TYPE abap_trans_parmvalue,
  END OF abap_trans_parmbind,
  BEGIN OF abap_trans_parm_obj_bind,
    name  TYPE abap_trans_parmname,
    value TYPE abap_trans_parmref,
  END OF abap_trans_parm_obj_bind.

TYPES:
  abap_trans_parmbind_tab
      TYPE STANDARD TABLE OF abap_trans_parmbind WITH KEY name,
  abap_trans_parm_obj_bind_tab
      TYPE SORTED TABLE OF abap_trans_parm_obj_bind WITH UNIQUE KEY name.

TYPES:
  abap_trans_objname TYPE string.

TYPES:
  BEGIN OF abap_trans_objbind,
    name  TYPE abap_trans_objname,
    value TYPE REF TO object,
  END OF abap_trans_objbind.

TYPES:
  abap_trans_objbind_tab
      TYPE STANDARD TABLE OF abap_trans_objbind WITH KEY name.

TYPES:
  abap_trans_srcname TYPE string.

TYPES:
  BEGIN OF abap_trans_srcbind,
    name  TYPE abap_trans_srcname,
    value TYPE REF TO data,
  END OF abap_trans_srcbind.

TYPES:
  abap_trans_srcbind_tab
       TYPE STANDARD TABLE OF abap_trans_srcbind WITH KEY name,
  abap_trans_srcbind_tab_sorted
       TYPE SORTED TABLE OF abap_trans_srcbind WITH UNIQUE KEY name.

TYPES:
  abap_trans_resname TYPE string.

TYPES:
  BEGIN OF abap_trans_resbind,
    name  TYPE abap_trans_resname,
    value TYPE REF TO data,
  END OF abap_trans_resbind.

TYPES:
  abap_trans_resbind_tab
       TYPE STANDARD TABLE OF abap_trans_resbind WITH KEY name,
  abap_trans_resbind_tab_sorted
       TYPE SORTED TABLE OF abap_trans_resbind WITH UNIQUE KEY name.