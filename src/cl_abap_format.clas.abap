CLASS cl_abap_format DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    CONSTANTS exp_preserve TYPE i VALUE cl_abap_math=>max_int4 ##NO_TEXT.
    CONSTANTS a_left TYPE i VALUE 1 ##NO_TEXT.
    CONSTANTS a_right TYPE i VALUE 2 ##NO_TEXT.
    CONSTANTS a_center TYPE i VALUE 3 ##NO_TEXT.
    CONSTANTS l_raw TYPE i VALUE 0 ##NO_TEXT.
    CONSTANTS l_out TYPE i VALUE 1 ##NO_TEXT.
    CONSTANTS l_in TYPE i VALUE 2 ##NO_TEXT.
    CONSTANTS s_left TYPE i VALUE 1 ##NO_TEXT.
    CONSTANTS s_leftplus TYPE i VALUE 2 ##NO_TEXT.
    CONSTANTS s_leftspace TYPE i VALUE 3 ##NO_TEXT.
    CONSTANTS s_right TYPE i VALUE 4 ##NO_TEXT.
    CONSTANTS s_rightplus TYPE i VALUE 5 ##NO_TEXT.
    CONSTANTS s_rightspace TYPE i VALUE 6 ##NO_TEXT.
    CONSTANTS z_yes TYPE i VALUE 0 ##NO_TEXT.
    CONSTANTS z_no TYPE i VALUE 1 ##NO_TEXT.
    CONSTANTS n_raw TYPE i VALUE 0 ##NO_TEXT.
    CONSTANTS n_user TYPE i VALUE 1 ##NO_TEXT.
    CONSTANTS n_environment TYPE i VALUE 2 ##NO_TEXT.
    CONSTANTS d_raw TYPE i VALUE 0 ##NO_TEXT.
    CONSTANTS d_user TYPE i VALUE 1 ##NO_TEXT.
    CONSTANTS d_environment TYPE i VALUE 3 ##NO_TEXT.
    CONSTANTS d_iso TYPE i VALUE 2 ##NO_TEXT.
    CONSTANTS t_raw TYPE i VALUE 0 ##NO_TEXT.
    CONSTANTS t_user TYPE i VALUE 2 ##NO_TEXT.
    CONSTANTS t_environment TYPE i VALUE 3 ##NO_TEXT.
    CONSTANTS t_iso TYPE i VALUE 1 ##NO_TEXT.
    CONSTANTS ts_raw TYPE i VALUE 0 ##NO_TEXT.
    CONSTANTS ts_space TYPE i VALUE 1 ##NO_TEXT.
    CONSTANTS ts_user TYPE i VALUE 2 ##NO_TEXT.
    CONSTANTS ts_environment TYPE i VALUE 4 ##NO_TEXT.
    CONSTANTS ts_iso TYPE i VALUE 3 ##NO_TEXT.
    CONSTANTS c_raw TYPE i VALUE 0 ##NO_TEXT.
    CONSTANTS c_upper TYPE i VALUE 1 ##NO_TEXT.
    CONSTANTS c_lower TYPE i VALUE 2 ##NO_TEXT.
    CONSTANTS x_no TYPE i VALUE 0 ##NO_TEXT.
    CONSTANTS x_yes TYPE i VALUE 1 ##NO_TEXT.
    CONSTANTS o_simple TYPE outputstyle VALUE 00 ##NO_TEXT.
    CONSTANTS o_sign_as_postfix TYPE outputstyle VALUE 01 ##NO_TEXT.
    CONSTANTS o_scale_preserving TYPE outputstyle VALUE 02 ##NO_TEXT.
    CONSTANTS o_scientific TYPE outputstyle VALUE 03 ##NO_TEXT.
    CONSTANTS o_scientific_with_leading_zero TYPE outputstyle VALUE 04 ##NO_TEXT.
    CONSTANTS o_scale_preserving_scientific TYPE outputstyle VALUE 05 ##NO_TEXT.
    CONSTANTS o_engineering TYPE outputstyle VALUE 06 ##NO_TEXT.
    CONSTANTS e_xml_text TYPE i VALUE 0 ##NO_TEXT.
    CONSTANTS e_xml_attr TYPE i VALUE 1 ##NO_TEXT.
    CONSTANTS e_xml_attr_dq TYPE i VALUE 2 ##NO_TEXT.
    CONSTANTS e_xml_attr_sq TYPE i VALUE 3 ##NO_TEXT.
    CONSTANTS e_html_text TYPE i VALUE 4 ##NO_TEXT.
    CONSTANTS e_html_attr TYPE i VALUE 5 ##NO_TEXT.
    CONSTANTS e_html_attr_dq TYPE i VALUE 6 ##NO_TEXT.
    CONSTANTS e_html_attr_sq TYPE i VALUE 7 ##NO_TEXT.
    CONSTANTS e_html_js TYPE i VALUE 8 ##NO_TEXT.
    CONSTANTS e_html_js_html TYPE i VALUE 10 ##NO_TEXT.
    CONSTANTS e_url TYPE i VALUE 12 ##NO_TEXT.
    CONSTANTS e_url_full TYPE i VALUE 14 ##NO_TEXT.
    CONSTANTS e_uri TYPE i VALUE 16 ##NO_TEXT.
    CONSTANTS e_uri_full TYPE i VALUE 18 ##NO_TEXT.
    CONSTANTS e_uri_1 TYPE i VALUE 33 ##NO_TEXT.
    CONSTANTS e_uri_lc TYPE i VALUE 35 ##NO_TEXT.
    CONSTANTS e_uri_full_lc TYPE i VALUE 36 ##NO_TEXT.
    CONSTANTS e_regex TYPE i VALUE 20 ##NO_TEXT.
    CONSTANTS e_string_tpl TYPE i VALUE 22 ##NO_TEXT.
    CONSTANTS e_json_string TYPE i VALUE 24 ##NO_TEXT.
    CONSTANTS e_json_string_nu TYPE i VALUE 39 ##NO_TEXT.
    CONSTANTS e_xss_ml TYPE i VALUE 26 ##NO_TEXT.
    CONSTANTS e_xss_ml_nu TYPE i VALUE 27 ##NO_TEXT.
    CONSTANTS e_xss_js TYPE i VALUE 28 ##NO_TEXT.
    CONSTANTS e_xss_js_nu TYPE i VALUE 29 ##NO_TEXT.
    CONSTANTS e_xss_css TYPE i VALUE 30 ##NO_TEXT.
    CONSTANTS e_xss_css_nu TYPE i VALUE 31 ##NO_TEXT.
    CONSTANTS e_xss_url TYPE i VALUE 32 ##NO_TEXT.
    CONSTANTS e_xss_ml_7b TYPE i VALUE 25 ##NO_TEXT.
    CONSTANTS e_xss_js_7b TYPE i VALUE 23 ##NO_TEXT.
    CONSTANTS e_xss_css_7b TYPE i VALUE 21 ##NO_TEXT.
    CONSTANTS e_xss_url_7b TYPE i VALUE 19 ##NO_TEXT.
    CONSTANTS e_pcre TYPE i VALUE 40 ##NO_TEXT.
    CONSTANTS e_pcre_extended TYPE i VALUE 41 ##NO_TEXT.
ENDCLASS.

CLASS cl_abap_format IMPLEMENTATION.
ENDCLASS.