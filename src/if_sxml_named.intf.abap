INTERFACE if_sxml_named
  PUBLIC.

  TYPES:
    BEGIN OF pathnode,
      qname          TYPE qname,
      prefix         TYPE string,
      child_position TYPE i,
    END OF pathnode.
  TYPES:
    path TYPE STANDARD TABLE OF pathnode WITH DEFAULT KEY.
  TYPES:
    BEGIN OF nsbinding,
      prefix TYPE string,
      nsuri  TYPE string,
    END OF nsbinding.
  TYPES:
    nsbindings TYPE HASHED TABLE OF nsbinding WITH UNIQUE KEY prefix.

  DATA:
    BEGIN OF qname READ-ONLY,
      name      TYPE string,
      namespace TYPE string,
    END OF qname.

  DATA prefix TYPE string READ-ONLY.
  CONSTANTS co_use_default_xmlns TYPE string VALUE ':'.     "#EC NOTEXT

  METHODS set_prefix
    IMPORTING
      !prefix TYPE string OPTIONAL.

ENDINTERFACE.