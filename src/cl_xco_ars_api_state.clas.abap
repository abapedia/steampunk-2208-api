CLASS cl_xco_ars_api_state DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      tv_feature_toggle_id TYPE c LENGTH 40.

    METHODS:
      get_release_state
        RETURNING
          VALUE(ro_release_state) TYPE REF TO cl_xco_ars_release_state,

      get_visibilities
        RETURNING
          VALUE(rt_visibilities) TYPE sxco_t_ars_visibilities,

      get_feature_toggle_id
        RETURNING
          VALUE(rv_feature_toggle_id) TYPE tv_feature_toggle_id.

ENDCLASS.

CLASS cl_xco_ars_api_state IMPLEMENTATION.
ENDCLASS.