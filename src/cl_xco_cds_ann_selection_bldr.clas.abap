CLASS cl_xco_cds_ann_selection_bldr DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PROTECTED SECTION.
    DATA:
      mt_selected_properties TYPE not_released_ttyp.

    METHODS:
      constructor
        IMPORTING
          it_selected_properties TYPE not_released_ttyp,

      set_selected_properties FINAL
        IMPORTING
          it_selected_properties TYPE not_released_ttyp,

      clone ABSTRACT
        RETURNING
          VALUE(ro_selection_builder) TYPE REF TO cl_xco_cds_ann_selection_bldr,

      get_selection ABSTRACT
        RETURNING
          VALUE(ro_selection) TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_cds_ann_selection_bldr IMPLEMENTATION.
ENDCLASS.