INTERFACE if_a4c_rap_query_request
  PUBLIC.

  TYPES: tv_entity_id TYPE c LENGTH 255.
  TYPES: BEGIN OF ts_element,
           element TYPE c LENGTH 30,
         END OF ts_element.
  TYPES tt_requested_element TYPE STANDARD TABLE OF ts_element WITH DEFAULT KEY.

  TYPES: BEGIN OF ts_paging,
           start_row    TYPE i, " 0 and 1: start from the first row
           maximum_rows TYPE i, " CO_MAXIMUM_ROWS_UNLIMITED and -1 (because of compatibility): no limitation
         END OF ts_paging.

  TYPES: BEGIN OF ts_search_text,
           search_term TYPE string,
         END OF ts_search_text.

  TYPES: BEGIN OF ts_filter_option,
           sign   TYPE ddsign,
           option TYPE ddoption,
           low    TYPE string,
           high   TYPE string,
         END OF ts_filter_option.
  TYPES: tt_filter_option TYPE STANDARD TABLE OF ts_filter_option WITH DEFAULT KEY.

  TYPES: BEGIN OF ts_filter_condition,
           element TYPE c LENGTH 30, "string,
           option  TYPE tt_filter_option,
         END OF ts_filter_condition.
  TYPES tt_filter_condition TYPE HASHED TABLE OF ts_filter_condition WITH UNIQUE KEY element.

  TYPES: BEGIN OF ts_sort_element,
           element     TYPE c LENGTH 30, "string, "element_name
           descending  TYPE abap_bool,
         END OF ts_sort_element.
  TYPES tt_sort_element TYPE STANDARD TABLE OF ts_sort_element WITH DEFAULT KEY.
  METHODS get_entity_id RETURNING VALUE(rv_entity_id) TYPE tv_entity_id.
  METHODS is_data_requested RETURNING VALUE(rv_is_requested) TYPE abap_bool.
  METHODS is_total_rec_number_requested RETURNING VALUE(rv_is_requested) TYPE abap_bool.
  METHODS get_requested_elements RETURNING VALUE(rt_requested_element) TYPE tt_requested_element.
  METHODS get_paging RETURNING VALUE(rs_paging) TYPE ts_paging.
  METHODS get_filter_conditions RETURNING VALUE(rt_filter_condition) TYPE tt_filter_condition.
  METHODS get_sort_elements RETURNING VALUE(rt_sort_element) TYPE tt_sort_element.
  METHODS get_search_text RETURNING VALUE(rs_search_text) TYPE ts_search_text.

ENDINTERFACE.