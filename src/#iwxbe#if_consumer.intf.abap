INTERFACE /iwxbe/if_consumer
  PUBLIC.

  METHODS:
    handle_event
      IMPORTING
        !io_event   TYPE REF TO /iwxbe/if_consumer_event
        !io_topic   TYPE REF TO /iwxbe/if_consumer_topic
      RAISING
        /iwxbe/cx_exception.
ENDINTERFACE.