INTERFACE if_swf_cpwf_callback
  PUBLIC.
  METHODS workflow_instance_completed
    IMPORTING
      iv_consumer_type TYPE swf_cpwf_consumer
      iv_cpwf_handle TYPE swf_cpwf_handle
    RAISING
      cx_swf_cpwf_callback.
ENDINTERFACE.