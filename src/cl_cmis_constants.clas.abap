CLASS cl_cmis_constants DEFINITION
  PUBLIC
  ABSTRACT
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS:
      BEGIN OF content_delivery,
        full    TYPE cmis_enum VALUE 'full',
        chunked TYPE cmis_enum VALUE 'chunked',
        url     TYPE cmis_enum VALUE 'url',
      END OF content_delivery.
    CONSTANTS:
      BEGIN OF default_content_delivery,
        full              TYPE cmis_enum VALUE 'full',
        chunked           TYPE cmis_enum VALUE 'chunked',
        document_specific TYPE cmis_enum VALUE 'document_specific',
      END OF default_content_delivery.
    CONSTANTS:
      BEGIN OF acl_propagation,
        repository_determined TYPE cmis_enum VALUE 'repositorydetermined',
        object_only           TYPE cmis_enum VALUE 'objectonly',
        propagate             TYPE cmis_enum VALUE 'propagate',
      END OF acl_propagation.
    CONSTANTS:
      BEGIN OF action,
        can_delete_object             TYPE cmis_enum VALUE 'canDeleteObject',
        can_update_properties         TYPE cmis_enum VALUE 'canUpdateProperties',
        can_get_folder_tree           TYPE cmis_enum VALUE 'canGetFolderTree',
        can_get_properties            TYPE cmis_enum VALUE 'canGetProperties',
        can_get_object_relationships  TYPE cmis_enum VALUE 'canGetObjectRelationships',
        can_get_object_parents        TYPE cmis_enum VALUE 'canGetObjectParents',
        can_get_folder_parent         TYPE cmis_enum VALUE 'canGetFolderParent',
        can_get_descendants           TYPE cmis_enum VALUE 'canGetDescendants',
        can_move_object               TYPE cmis_enum VALUE 'canMoveObject',
        can_delete_content_stream     TYPE cmis_enum VALUE 'canDeleteContentStream',
        can_check_out                 TYPE cmis_enum VALUE 'canCheckOut',
        can_cancel_check_out          TYPE cmis_enum VALUE 'canCancelCheckOut',
        can_check_in                  TYPE cmis_enum VALUE 'canCheckIn',
        can_set_content_stream        TYPE cmis_enum VALUE 'canSetContentStream',
        can_get_all_versions          TYPE cmis_enum VALUE 'canGetAllVersions',
        can_add_object_to_folder      TYPE cmis_enum VALUE 'canAddObjectToFolder',
        can_remove_object_from_folder TYPE cmis_enum VALUE 'canRemoveObjectFromFolder',
        can_get_content_stream        TYPE cmis_enum VALUE 'canGetContentStream',
        can_apply_policy              TYPE cmis_enum VALUE 'canApplyPolicy',
        can_get_applied_policies      TYPE cmis_enum VALUE 'canGetAppliedPolicies',
        can_remove_policy             TYPE cmis_enum VALUE 'canRemovePolicy',
        can_get_children              TYPE cmis_enum VALUE 'canGetChildren',
        can_create_document           TYPE cmis_enum VALUE 'canCreateDocument',
        can_create_folder             TYPE cmis_enum VALUE 'canCreateFolder',
        can_create_relationship       TYPE cmis_enum VALUE 'canCreateRelationship',
        can_create_item               TYPE cmis_enum VALUE 'canCreateItem',
        can_delete_tree               TYPE cmis_enum VALUE 'canDeleteTree',
        can_get_renditions            TYPE cmis_enum VALUE 'canGetRenditions',
        can_get_acl                   TYPE cmis_enum VALUE 'canGetACL',
        can_apply_acl                 TYPE cmis_enum VALUE 'canApplyACL',
      END OF action.
    CONSTANTS:
      BEGIN OF base_type_id,
        cmis_document     TYPE cmis_enum VALUE 'cmis:document',
        cmis_folder       TYPE cmis_enum VALUE 'cmis:folder',
        cmis_relationship TYPE cmis_enum VALUE 'cmis:relationship',
        cmis_policy       TYPE cmis_enum VALUE 'cmis:policy',
        cmis_item         TYPE cmis_enum VALUE 'cmis:item',
        cmis_secondary    TYPE cmis_enum VALUE 'cmis:secondary',
        cmis_rm_hold      TYPE cmis_enum VALUE 'cmis:rm_hold',
        mcm_value_help    TYPE cmis_enum VALUE 'mcm:valueHelp',
        mcm_link          TYPE cmis_enum VALUE 'mcm:link',
        sapecm_uri        TYPE cmis_enum VALUE 'sapecm:uri',
      END OF base_type_id.
    CONSTANTS:
      BEGIN OF binding_type,
        webservices TYPE cmis_enum VALUE 'webservices',
        atompub     TYPE cmis_enum VALUE 'atompub',
        browser     TYPE cmis_enum VALUE 'browser',
        local       TYPE cmis_enum VALUE 'custom',
      END OF binding_type.
    CONSTANTS:
      BEGIN OF capability_acl,
        none     TYPE cmis_enum VALUE 'none',
        discover TYPE cmis_enum VALUE 'discover',
        manage   TYPE cmis_enum VALUE 'manage',
      END OF capability_acl.
    CONSTANTS:
      BEGIN OF capability_changes,
        none            TYPE cmis_enum VALUE 'none',
        object_ids_only TYPE cmis_enum VALUE 'objectidsonly',
        properties      TYPE cmis_enum VALUE 'properties',
        all             TYPE cmis_enum VALUE 'all',
      END OF capability_changes.
    CONSTANTS:
      BEGIN OF capability_content_updates,
        anytime  TYPE cmis_enum VALUE 'anytime',
        pwc_only TYPE cmis_enum VALUE 'pwconly',
        none     TYPE cmis_enum VALUE 'none',
      END OF capability_content_updates.
    CONSTANTS:
      BEGIN OF capability_join,
        none            TYPE cmis_enum VALUE 'none',
        inner_only      TYPE cmis_enum VALUE 'inneronly',
        inner_and_outer TYPE cmis_enum VALUE 'innerandouter',
      END OF capability_join.
    CONSTANTS:
      BEGIN OF capability_order_by,
        none   TYPE cmis_enum VALUE 'none',
        common TYPE cmis_enum VALUE 'common',
        custom TYPE cmis_enum VALUE 'custom',
      END OF capability_order_by.
    CONSTANTS:
      BEGIN OF capability_query,
        none           TYPE cmis_enum VALUE 'none',
        meta_data_only TYPE cmis_enum VALUE 'metadataonly',
        full_text_only TYPE cmis_enum VALUE 'fulltextonly',
        both_separate  TYPE cmis_enum VALUE 'bothseparate',
        both_combined  TYPE cmis_enum VALUE 'bothcombined',
      END OF capability_query.
    CONSTANTS:
      BEGIN OF capability_renditions,
        none TYPE cmis_enum VALUE 'none',
        read TYPE cmis_enum VALUE 'read',
      END OF capability_renditions.
    CONSTANTS:
      BEGIN OF cardinality,
        single TYPE cmis_enum VALUE 'single',
        multi  TYPE cmis_enum VALUE 'multi',
      END OF cardinality.
    CONSTANTS:
      BEGIN OF change_type,
        created  TYPE cmis_enum VALUE 'created',
        updated  TYPE cmis_enum VALUE 'updated',
        deleted  TYPE cmis_enum VALUE 'deleted',
        security TYPE cmis_enum VALUE 'security',
      END OF change_type.
    CONSTANTS:
      BEGIN OF cmis_version,
        cmis_1_0 TYPE cmis_enum VALUE '1.0',
        cmis_1_1 TYPE cmis_enum VALUE '1.1',
      END OF cmis_version.
    CONSTANTS:
      BEGIN OF content_stream_allowed,
        not_allowed TYPE cmis_enum VALUE 'notallowed',
        allowed     TYPE cmis_enum VALUE 'allowed',
        required    TYPE cmis_enum VALUE 'required',
      END OF content_stream_allowed.
    CONSTANTS:
      BEGIN OF date_time_resolution,
        year TYPE cmis_enum VALUE 'year',
        date TYPE cmis_enum VALUE 'date',
        time TYPE cmis_enum VALUE 'time',
      END OF date_time_resolution.
    CONSTANTS:
      BEGIN OF extension_level,
        object            TYPE cmis_enum VALUE 'object',
        properties        TYPE cmis_enum VALUE 'properties',
        allowable_actions TYPE cmis_enum VALUE 'allowableActions',
        acl               TYPE cmis_enum VALUE 'acl',
        policies          TYPE cmis_enum VALUE 'policies',
        change_event      TYPE cmis_enum VALUE 'changeEvent',
      END OF extension_level.
    CONSTANTS:
      BEGIN OF include_relationships,
        none   TYPE cmis_enum VALUE 'none',
        source TYPE cmis_enum VALUE 'source',
        target TYPE cmis_enum VALUE 'target',
        both   TYPE cmis_enum VALUE 'both',
      END OF include_relationships.
    CONSTANTS:
      BEGIN OF property_type,
        boolean   TYPE cmis_enum VALUE 'boolean',
        string    TYPE cmis_enum VALUE 'string',
        id        TYPE cmis_enum VALUE 'id',
        integer   TYPE cmis_enum VALUE 'integer',
        date_time TYPE cmis_enum VALUE 'datetime',
        decimal   TYPE cmis_enum VALUE 'decimal',
        html      TYPE cmis_enum VALUE 'html',
        uri       TYPE cmis_enum VALUE 'uri',
      END OF property_type.
    CONSTANTS:
      BEGIN OF relationship_direction,
        source TYPE cmis_enum VALUE 'source',
        target TYPE cmis_enum VALUE 'target',
        either TYPE cmis_enum VALUE 'either',
      END OF relationship_direction.
    CONSTANTS:
      BEGIN OF supported_permissions,
        basic      TYPE cmis_enum VALUE 'basic',
        repository TYPE cmis_enum VALUE 'repository',
        both       TYPE cmis_enum VALUE 'both',
      END OF supported_permissions.
    CONSTANTS:
      BEGIN OF unfiled_objects,
        unfile              TYPE cmis_enum VALUE 'unfile',
        delete_single_filed TYPE cmis_enum VALUE 'deletesinglefiled',
        delete              TYPE cmis_enum VALUE 'delete',
      END OF unfiled_objects.
    CONSTANTS:
      BEGIN OF updatability,
        read_only        TYPE cmis_enum VALUE 'readonly',
        read_write       TYPE cmis_enum VALUE 'readwrite',
        when_checked_out TYPE cmis_enum VALUE 'whencheckedout',
        on_create        TYPE cmis_enum VALUE 'oncreate',
      END OF updatability.
    CONSTANTS:
      BEGIN OF versioning_state,
        none        TYPE cmis_enum VALUE 'none',
        major       TYPE cmis_enum VALUE 'major',
        minor       TYPE cmis_enum VALUE 'minor',
        checked_out TYPE cmis_enum VALUE 'checkedout',
      END OF versioning_state.
    CONSTANTS:
      BEGIN OF upload_result,
        ok                TYPE cmis_enum VALUE 'ok',
        failed            TYPE cmis_enum VALUE 'failed',
        unauthorized      TYPE cmis_enum VALUE 'unauthorized',
        permission_denied TYPE cmis_enum VALUE 'permissiondenied',
        not_found         TYPE cmis_enum VALUE 'notfound',
      END OF upload_result.
    CONSTANTS:
      BEGIN OF decimal_precision,
        bits32 TYPE cmis_enum VALUE '32',
        bits64 TYPE cmis_enum VALUE '64',
      END OF decimal_precision.
  PROTECTED SECTION.
ENDCLASS.

CLASS cl_cmis_constants IMPLEMENTATION.
ENDCLASS.