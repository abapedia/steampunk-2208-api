
INTERFACE if_badi_context
  PUBLIC.

  TYPES:
    BEGIN OF cache_wa,
      cache_handler TYPE REF TO not_released,
      class TYPE c LENGTH 30,
      reference TYPE REF TO object,  "the stored implementation!!
    END OF cache_wa.

  DATA:
    cache_tab TYPE HASHED TABLE OF cache_wa WITH UNIQUE KEY cache_handler class.
ENDINTERFACE.