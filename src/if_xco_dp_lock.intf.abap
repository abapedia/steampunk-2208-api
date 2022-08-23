INTERFACE if_xco_dp_lock PUBLIC.
  INTERFACES:
    if_xco_dp_action_decorator.

  METHODS:
    acquire
      RAISING
        cx_xco_lock_exception,
    release.
ENDINTERFACE.