# coding: utf-8

"""
    JBS Backend Service

    Journalim Protocol Compatible Backend Service  # noqa: E501

    OpenAPI spec version: 0.0.1
    Contact: a@azat.ai
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

from __future__ import absolute_import

import unittest

import swagger_client
from swagger_client.api.attachment_api import AttachmentApi  # noqa: E501
from swagger_client.rest import ApiException


class TestAttachmentApi(unittest.TestCase):
    """AttachmentApi unit test stubs"""

    def setUp(self):
        self.api = AttachmentApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_create_attachment_attachments_post(self):
        """Test case for create_attachment_attachments_post

        Create Attachment  # noqa: E501
        """
        pass

    def test_delete_attachment_attachments_attachment_id_delete(self):
        """Test case for delete_attachment_attachments_attachment_id_delete

        Delete Attachment  # noqa: E501
        """
        pass

    def test_read_attachment_attachments_attachment_id_get(self):
        """Test case for read_attachment_attachments_attachment_id_get

        Read Attachment  # noqa: E501
        """
        pass

    def test_read_attachments_attachments_get(self):
        """Test case for read_attachments_attachments_get

        Read Attachments  # noqa: E501
        """
        pass

    def test_update_attachment_attachments_attachment_id_patch(self):
        """Test case for update_attachment_attachments_attachment_id_patch

        Update Attachment  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
