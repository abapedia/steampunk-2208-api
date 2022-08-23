CLASS cl_fp_ads_util DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    "Like interface IF_FP_PDF_INITIALVIEW_LAYOUT
    CONSTANTS c_inv_layout_default      TYPE string VALUE 'Default'. "#EC NOTEXT
    CONSTANTS c_inv_layout_single       TYPE string VALUE 'Single'. "#EC NOTEXT
    CONSTANTS c_inv_layout_continuous   TYPE string VALUE 'Continuous'. "#EC NOTEXT
    CONSTANTS c_inv_layout_facing       TYPE string VALUE 'Facing'. "#EC NOTEXT
    CONSTANTS c_inv_layout_cont_facing  TYPE string VALUE 'Continuous_Facing'. "#EC NOTEXT

    "Like interface IF_FP_PDF_INITIALVIEW_MAGNIF
    CONSTANTS c_inv_magnif_default      TYPE string VALUE 'Default'. "#EC NOTEXT
    CONSTANTS c_inv_magnif_fitpage      TYPE string VALUE 'FitPage'. "#EC NOTEXT
    CONSTANTS c_inv_magnif_fitwidth     TYPE string VALUE 'FitWidth'. "#EC NOTEXT
    CONSTANTS c_inv_magnif_fitvisible   TYPE string VALUE 'FitVisible'. "#EC NOTEXT
    CONSTANTS c_inv_magnif_percentage   TYPE string VALUE 'Percentage'. "#EC NOTEXT

    "Like interface IF_FP_PDF_INITIALVIEW_SHOW
    CONSTANTS c_inv_show_default        TYPE string VALUE 'Default'. "#EC NOTEXT
    CONSTANTS c_inv_show_pages          TYPE string VALUE 'Pages'. "#EC NOTEXT
    CONSTANTS c_inv_show_bookmarks      TYPE string VALUE 'Bookmarks'. "#EC NOTEXT
    CONSTANTS c_inv_show_thumbnails     TYPE string VALUE 'Thumbnails'. "#EC NOTEXT
    CONSTANTS c_inv_show_layers         TYPE string VALUE 'Layers'. "#EC NOTEXT
    CONSTANTS c_inv_show_attachments    TYPE string VALUE 'Attachments'. "#EC NOTEXT

    CONSTANTS:
      c_pdf_ch_restr_add TYPE c LENGTH 1 VALUE 'A',         "#EC NOTEXT
      c_pdf_ch_restr_no  TYPE c LENGTH 1 VALUE 'X'.         "#EC NOTEXT

    TYPES:
      BEGIN OF ty_pdf_initview,
        show                 TYPE          string,
        layout               TYPE          string,
        magnification        TYPE          string,
        percent              TYPE          int4,
        initial_page         TYPE          int4,
        resize_window        TYPE          abap_bool,
        center_window        TYPE          abap_bool,
        full_screen          TYPE          abap_bool,
        title_shows_filename TYPE          abap_bool,
        hide_menu_bar        TYPE          abap_bool,
        hide_tool_bars       TYPE          abap_bool,
        hide_window_controls TYPE          abap_bool,
      END OF  ty_pdf_initview.

    TYPES:
       ty_pq_name             TYPE c LENGTH 32.

    TYPES:
       ty_pdf_change_restr    TYPE c LENGTH 1.

    TYPES:
      BEGIN OF  ty_fontmap_str,
        font_from TYPE string,
        font_to   TYPE string,
        uc        TYPE string,
      END OF    ty_fontmap_str.

    TYPES:
       ty_fontmap_tab          TYPE STANDARD TABLE OF ty_fontmap_str WITH EMPTY KEY.

    TYPES:
      BEGIN OF  ty_gs_options_pdf,
        no_tagging           TYPE abap_bool,
        no_print             TYPE abap_bool,
        initial_view         TYPE ty_pdf_initview,
        pdfchangesrestricted TYPE ty_pdf_change_restr,
        embed_fonts          TYPE abap_bool,
        fontmaptab           TYPE ty_fontmap_tab,
        job_profile          TYPE string,
        trace_level          TYPE int4,
      END OF  ty_gs_options_pdf.
    TYPES:
      BEGIN OF  ty_gs_options_pdl,
        fontmaptab  TYPE ty_fontmap_tab,
        job_profile TYPE string,
        trace_level TYPE int4,
      END OF  ty_gs_options_pdl.
    CLASS-METHODS render_pdf
      IMPORTING
        !iv_xml_data     TYPE xstring
        !iv_xdp_layout   TYPE xstring
        !iv_locale       TYPE string
        !is_options      TYPE ty_gs_options_pdf OPTIONAL
      EXPORTING
        !ev_pdf          TYPE xstring
        !ev_pages        TYPE int4
        !ev_trace_string TYPE string
      RAISING
        cx_fp_ads_util.
    CLASS-METHODS render_4_pq
      IMPORTING
        !iv_xml_data     TYPE xstring
        !iv_xdp_layout   TYPE xstring
        !iv_locale       TYPE string
        !iv_pq_name      TYPE ty_pq_name
        !is_options      TYPE ty_gs_options_pdl OPTIONAL
      EXPORTING
        !ev_pdl          TYPE xstring
        !ev_pages        TYPE int4
        !ev_trace_string TYPE string
        !ev_pdf_trace    TYPE xstring
      RAISING
        cx_fp_ads_util.
ENDCLASS.

CLASS cl_fp_ads_util IMPLEMENTATION.
ENDCLASS.