INTERFACE /iwxbe/if_consumer_topic

  PUBLIC.

  METHODS:
    get_topic_string
      RETURNING
        VALUE(rv_topic_string) TYPE /iwxbe/if_description_types=>ty_e_topic.

ENDINTERFACE.