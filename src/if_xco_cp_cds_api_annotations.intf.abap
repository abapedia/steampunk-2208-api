INTERFACE if_xco_cp_cds_api_annotations PUBLIC.
  DATA:
    metadata_extension TYPE REF TO cl_xco_cds_ann_class READ-ONLY,
    direct             TYPE REF TO cl_xco_cds_ann_class READ-ONLY,
    inherited          TYPE REF TO cl_xco_cds_ann_class READ-ONLY,
    derived            TYPE REF TO cl_xco_cds_ann_class READ-ONLY,

    aggregated         TYPE REF TO cl_xco_cds_ann_class READ-ONLY.
ENDINTERFACE.