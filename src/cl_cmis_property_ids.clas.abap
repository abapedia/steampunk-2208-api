CLASS cl_cmis_property_ids DEFINITION
  PUBLIC
  ABSTRACT
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS name TYPE string VALUE 'cmis:name' ##NO_TEXT.
    CONSTANTS object_id TYPE string VALUE 'cmis:objectId' ##NO_TEXT.
    CONSTANTS object_type_id TYPE string VALUE 'cmis:objectTypeId' ##NO_TEXT.
    CONSTANTS base_type_id TYPE string VALUE 'cmis:baseTypeId' ##NO_TEXT.
    CONSTANTS created_by TYPE string VALUE 'cmis:createdBy' ##NO_TEXT.
    CONSTANTS creation_date TYPE string VALUE 'cmis:creationDate' ##NO_TEXT.
    CONSTANTS last_modified_by TYPE string VALUE 'cmis:lastModifiedBy' ##NO_TEXT.
    CONSTANTS last_modification_date TYPE string VALUE 'cmis:lastModificationDate' ##NO_TEXT.
    CONSTANTS change_token TYPE string VALUE 'cmis:changeToken' ##NO_TEXT.
    CONSTANTS description TYPE string VALUE 'cmis:description' ##NO_TEXT.
    CONSTANTS secondary_object_type_ids TYPE string VALUE 'cmis:secondaryObjectTypeIds' ##NO_TEXT.
    CONSTANTS is_immutable TYPE string VALUE 'cmis:isImmutable' ##NO_TEXT.
    CONSTANTS is_latest_version TYPE string VALUE 'cmis:isLatestVersion' ##NO_TEXT.
    CONSTANTS is_major_version TYPE string VALUE 'cmis:isMajorVersion' ##NO_TEXT.
    CONSTANTS is_latest_major_version TYPE string VALUE 'cmis:isLatestMajorVersion' ##NO_TEXT.
    CONSTANTS version_label TYPE string VALUE 'cmis:versionLabel' ##NO_TEXT.
    CONSTANTS version_series_id TYPE string VALUE 'cmis:versionSeriesId' ##NO_TEXT.
    CONSTANTS is_version_series_checked_out TYPE string VALUE 'cmis:isVersionSeriesCheckedOut' ##NO_TEXT.
    CONSTANTS version_series_checked_out_by TYPE string VALUE 'cmis:versionSeriesCheckedOutBy' ##NO_TEXT.
    CONSTANTS version_series_checked_out_id TYPE string VALUE 'cmis:versionSeriesCheckedOutId' ##NO_TEXT.
    CONSTANTS checkin_comment TYPE string VALUE 'cmis:checkinComment' ##NO_TEXT.
    CONSTANTS content_stream_length TYPE string VALUE 'cmis:contentStreamLength' ##NO_TEXT.
    CONSTANTS content_stream_mime_type TYPE string VALUE 'cmis:contentStreamMimeType' ##NO_TEXT.
    CONSTANTS content_stream_file_name TYPE string VALUE 'cmis:contentStreamFileName' ##NO_TEXT.
    CONSTANTS content_stream_id TYPE string VALUE 'cmis:contentStreamId' ##NO_TEXT.
    CONSTANTS is_private_working_copy TYPE string VALUE 'cmis:isPrivateWorkingCopy' ##NO_TEXT.
    CONSTANTS parent_id TYPE string VALUE 'cmis:parentId' ##NO_TEXT.
    CONSTANTS allowed_child_object_type_ids TYPE string VALUE 'cmis:allowedChildObjectTypeIds' ##NO_TEXT.
    CONSTANTS path TYPE string VALUE 'cmis:path' ##NO_TEXT.
    CONSTANTS source_id TYPE string VALUE 'cmis:sourceId' ##NO_TEXT.
    CONSTANTS target_id TYPE string VALUE 'cmis:targetId' ##NO_TEXT.
    CONSTANTS policy_text TYPE string VALUE 'cmis:policyText' ##NO_TEXT.
    CONSTANTS expiration_date TYPE string VALUE 'cmis:rm_expirationDate' ##NO_TEXT.
    CONSTANTS start_of_retention TYPE string VALUE 'cmis:rm_startOfRetention' ##NO_TEXT.
    CONSTANTS destruction_date TYPE string VALUE 'cmis:rm_destructionDate' ##NO_TEXT.
    CONSTANTS hold_ids TYPE string VALUE 'cmis:rm_holdIds' ##NO_TEXT.
    CONSTANTS content_stream_hash TYPE string VALUE 'cmis:contentStreamHash' ##NO_TEXT.
    CONSTANTS doc_component_id TYPE string VALUE 'sapbo:basedocument:DocumentComponentID' ##NO_TEXT.
    CONSTANTS item TYPE string VALUE 'cmis:item' ##NO_TEXT.
    CONSTANTS sap_office_url TYPE string VALUE 'sap:officeurl'.
  PROTECTED SECTION.
ENDCLASS.

CLASS cl_cmis_property_ids IMPLEMENTATION.
ENDCLASS.