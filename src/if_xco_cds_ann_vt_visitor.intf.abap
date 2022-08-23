INTERFACE if_xco_cds_ann_vt_visitor PUBLIC.
  METHODS:
    on_start DEFAULT IGNORE,

    on_end DEFAULT IGNORE,

    enter_record DEFAULT IGNORE,

    leave_record DEFAULT IGNORE,

    enter_array DEFAULT IGNORE,

    leave_array DEFAULT IGNORE,

    visit_name DEFAULT IGNORE
      IMPORTING
        iv_name TYPE string,

    visit_string DEFAULT IGNORE
      IMPORTING
        io_string TYPE REF TO if_xco_cds_ann_val_p_string,

    visit_enum DEFAULT IGNORE
      IMPORTING
        io_enum TYPE REF TO if_xco_cds_ann_val_p_enum,

    visit_number DEFAULT IGNORE
      IMPORTING
        io_number TYPE REF TO if_xco_cds_ann_val_p_number,

    visit_boolean DEFAULT IGNORE
      IMPORTING
        io_boolean TYPE REF TO if_xco_cds_ann_val_p_boolean,

    visit_null DEFAULT IGNORE
      IMPORTING
        io_null TYPE REF TO if_xco_cds_ann_val_p_null.
ENDINTERFACE.