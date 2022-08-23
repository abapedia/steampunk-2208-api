INTERFACE if_rap_query_aggregation PUBLIC.

  CONSTANTS: "! Predefined aggregation methods. Their implementation shall yield results which adhere to the definition of the corresponding ABAP SQL Aggregate Expressions.
             BEGIN OF co_standard_aggregation_method,
               count          TYPE string VALUE `COUNT`,
               count_distinct TYPE string VALUE `COUNT_DISTINCT`,
               sum            TYPE string VALUE `SUM`,
               minimum        TYPE string VALUE `MIN`,
               maximum        TYPE string VALUE `MAX`,
               average        TYPE string VALUE `AVG`,
             END OF   co_standard_aggregation_method.
  CONSTANTS co_count_all_identifier TYPE string VALUE `*`.

  TYPES: "! Aggregation transformation
          BEGIN OF ty_aggregation_element,
            aggregation_method TYPE string,
            input_element      TYPE string,
            result_element     TYPE string,
         END OF ty_aggregation_element.
  TYPES tt_aggregation_elements TYPE STANDARD TABLE OF ty_aggregation_element WITH EMPTY KEY.
  METHODS get_aggregated_elements RETURNING VALUE(rt_aggregated_elements) TYPE tt_aggregation_elements.

  TYPES tt_grouped_elements TYPE STANDARD TABLE OF string WITH EMPTY KEY.
  METHODS get_grouped_elements RETURNING VALUE(rt_grouped_elements) TYPE tt_grouped_elements.

ENDINTERFACE.