INTERFACE if_xco_gen_o_f_section_factory PUBLIC.
  TYPES:
    tv_type TYPE c LENGTH 4.

  DATA:
    bdef TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    clas TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    dcls TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    ddls TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    ddlx TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    devc TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    dobj TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    doma TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    dtel TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    ftg2 TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    ilmb TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    intf TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    fugr TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    msag TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    srvb TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    srvd TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    tabl TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    ttyp TYPE REF TO if_xco_gen_o_f_section READ-ONLY,
    xslt TYPE REF TO if_xco_gen_o_f_section READ-ONLY.

  METHODS:
    type
      IMPORTING
        iv_type           TYPE tv_type
      RETURNING
        VALUE(ro_section) TYPE REF TO if_xco_gen_o_f_section.
ENDINTERFACE.