# coding: utf-8

# flake8: noqa
"""
    JBS Backend Service

    Journalim Protocol Compatible Backend Service  # noqa: E501

    OpenAPI spec version: 0.0.1
    Contact: a@azat.ai
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

from __future__ import absolute_import

# import models into model package
from swagger_client.models.any_of_generic_file_upload_response_path import AnyOfGenericFileUploadResponsePath
from swagger_client.models.any_of_validation_error_loc_items import AnyOfValidationErrorLocItems
from swagger_client.models.attachment_create import AttachmentCreate
from swagger_client.models.attachment_read import AttachmentRead
from swagger_client.models.attachment_update import AttachmentUpdate
from swagger_client.models.body_create_token_token_post import BodyCreateTokenTokenPost
from swagger_client.models.body_create_upload_upload_post import BodyCreateUploadUploadPost
from swagger_client.models.error_response_model import ErrorResponseModel
from swagger_client.models.generic_file_upload_response import GenericFileUploadResponse
from swagger_client.models.http_validation_error import HTTPValidationError
from swagger_client.models.issue_create import IssueCreate
from swagger_client.models.issue_language_create import IssueLanguageCreate
from swagger_client.models.issue_language_read import IssueLanguageRead
from swagger_client.models.issue_language_update import IssueLanguageUpdate
from swagger_client.models.issue_read import IssueRead
from swagger_client.models.issue_update import IssueUpdate
from swagger_client.models.language_create import LanguageCreate
from swagger_client.models.language_read import LanguageRead
from swagger_client.models.language_update import LanguageUpdate
from swagger_client.models.media_read import MediaRead
from swagger_client.models.media_update import MediaUpdate
from swagger_client.models.page_create import PageCreate
from swagger_client.models.page_language_create import PageLanguageCreate
from swagger_client.models.page_language_read import PageLanguageRead
from swagger_client.models.page_language_update import PageLanguageUpdate
from swagger_client.models.page_read import PageRead
from swagger_client.models.page_update import PageUpdate
from swagger_client.models.post_create import PostCreate
from swagger_client.models.post_language_create import PostLanguageCreate
from swagger_client.models.post_language_read import PostLanguageRead
from swagger_client.models.post_language_update import PostLanguageUpdate
from swagger_client.models.post_read import PostRead
from swagger_client.models.post_update import PostUpdate
from swagger_client.models.publication_create import PublicationCreate
from swagger_client.models.publication_language_create import PublicationLanguageCreate
from swagger_client.models.publication_language_read import PublicationLanguageRead
from swagger_client.models.publication_language_update import PublicationLanguageUpdate
from swagger_client.models.publication_read import PublicationRead
from swagger_client.models.publication_update import PublicationUpdate
from swagger_client.models.site_create import SiteCreate
from swagger_client.models.site_language_create import SiteLanguageCreate
from swagger_client.models.site_language_read import SiteLanguageRead
from swagger_client.models.site_language_update import SiteLanguageUpdate
from swagger_client.models.site_read import SiteRead
from swagger_client.models.site_update import SiteUpdate
from swagger_client.models.success_response_model import SuccessResponseModel
from swagger_client.models.token import Token
from swagger_client.models.user_create import UserCreate
from swagger_client.models.user_read import UserRead
from swagger_client.models.user_update import UserUpdate
from swagger_client.models.validation_error import ValidationError