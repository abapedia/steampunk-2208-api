INTERFACE if_xco_gen_clas_s_fo_i_m_amdp PUBLIC.
  METHODS:
    mark_as_procedure
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_i_m_amdp,

    mark_as_function
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_i_m_amdp,

    set_database_type
      IMPORTING
        io_database_type TYPE REF TO cl_xco_amdp_db_type
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_gen_clas_s_fo_i_m_amdp,

    set_database_language
      IMPORTING
        io_database_language TYPE REF TO cl_xco_amdp_db_language
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_clas_s_fo_i_m_amdp,

    set_database_options
      IMPORTING
        it_database_options TYPE sxco_t_amdp_db_options
      RETURNING
        VALUE(ro_me)        TYPE REF TO if_xco_gen_clas_s_fo_i_m_amdp,
    set_database_entities
      IMPORTING
        it_database_entities TYPE sxco_t_amdp_db_entities
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_clas_s_fo_i_m_amdp,

    add_database_entity
      IMPORTING
        io_database_entity TYPE REF TO  if_xco_gen_clas_amdp_db_entity.
ENDINTERFACE.