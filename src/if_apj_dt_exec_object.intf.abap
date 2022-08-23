INTERFACE if_apj_dt_exec_object
  PUBLIC.

  TYPES:
     BEGIN OF ENUM ty_kind,
           parameter,
           select_option,
     END OF ENUM ty_kind.

  TYPES:
    BEGIN OF ty_templ_val,
      selname(8) TYPE  c,
      kind(1)    TYPE  c,
      sign(1)    TYPE  c,
      option(2)  TYPE  c,
      low        TYPE  c LENGTH 255,
      high       TYPE  c LENGTH 255,
    END OF ty_templ_val.
  TYPES:
    tt_templ_val TYPE STANDARD TABLE OF ty_templ_val WITH NON-UNIQUE KEY selname.
  TYPES:
    BEGIN OF ty_templ_def,
      selname         TYPE  c LENGTH 8,
      kind            TYPE  c LENGTH 1,
      datatype        TYPE  c LENGTH 4,
      length          TYPE  int4,
      decimals        TYPE  int4,
      component_type  TYPE  c LENGTH 30,
      section_text    TYPE  c LENGTH 255,
      group_text      TYPE  c LENGTH 255,
      param_text      TYPE  c LENGTH 255,
      lowercase_ind   TYPE  abap_bool,
      hidden_ind      TYPE  abap_bool,
      changeable_ind  TYPE  abap_bool,
      mandatory_ind   TYPE  abap_bool,
      checkbox_ind    TYPE  abap_bool,
      list_ind        TYPE  abap_bool,
      radio_group_ind TYPE  abap_bool,
      radio_group_id  TYPE  c LENGTH 4,
    END OF ty_templ_def.
  TYPES:
    tt_templ_def TYPE STANDARD TABLE OF ty_templ_def WITH NON-UNIQUE KEY selname.
  METHODS get_parameters
    EXPORTING
      !et_parameter_def TYPE tt_templ_def
      !et_parameter_val TYPE tt_templ_val.
ENDINTERFACE.