INTERFACE if_com_user
  PUBLIC.

  TYPES:
    BEGIN OF ty_cu,
      id          TYPE c LENGTH 12,
      name        TYPE c LENGTH 40,
      description TYPE c LENGTH 80,
      lock_status TYPE i,
      changed_by  TYPE c LENGTH 80,
      changed_at  TYPE p LENGTH 15 DECIMALS 0,
    END OF ty_cu.
  TYPES:
    tt_cu  TYPE STANDARD TABLE OF REF TO if_com_user WITH DEFAULT KEY.

  CONSTANTS:
    BEGIN OF co_lock_status,
      not_locked             TYPE i VALUE 0 ##NO_TEXT,
      locked_global_by_admin TYPE i VALUE 32 ##NO_TEXT,
      locked_local_by_admin  TYPE i VALUE 64 ##NO_TEXT,
      locked_by_system       TYPE i VALUE 128 ##NO_TEXT,
    END OF co_lock_status.
  METHODS get_id
    RETURNING
      VALUE(rv_id) TYPE ty_cu-id.
  METHODS get_name
    RETURNING
      VALUE(rv_name) TYPE ty_cu-name.
  METHODS get_description
    RETURNING
      VALUE(rv_description) TYPE ty_cu-description.
  METHODS get_lock_status
    RETURNING
      VALUE(rv_lock_status) TYPE ty_cu-lock_status.
  METHODS get_changed_by
    RETURNING
      VALUE(rv_changed_by) TYPE ty_cu-changed_by.
  METHODS get_changed_at
    RETURNING
      VALUE(rv_changed_at) TYPE ty_cu-changed_at.
ENDINTERFACE.