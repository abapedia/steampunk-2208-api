INTERFACE if_xco_cp_gen_dtel_s_form PUBLIC.
  TYPES:
    tv_short_description TYPE c LENGTH 60,

    BEGIN OF ts_field_label,
      short   TYPE REF TO if_xco_gen_dtel_s_fo_fld_lbl,
      medium  TYPE REF TO if_xco_gen_dtel_s_fo_fld_lbl,
      long    TYPE REF TO if_xco_gen_dtel_s_fo_fld_lbl,
      heading TYPE REF TO if_xco_gen_dtel_s_fo_fld_lbl,
    END OF ts_field_label.

  DATA:
    field_label TYPE ts_field_label READ-ONLY.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_dtel_s_form,

    set_data_type
      IMPORTING
        io_data_type TYPE REF TO if_xco_gen_dtel_data_type
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_dtel_s_form.
ENDINTERFACE.