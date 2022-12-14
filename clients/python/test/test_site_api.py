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
from swagger_client.api.site_api import SiteApi  # noqa: E501
from swagger_client.rest import ApiException


class TestSiteApi(unittest.TestCase):
    """SiteApi unit test stubs"""

    def setUp(self):
        self.api = SiteApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_create_site_language_site_languages_post(self):
        """Test case for create_site_language_site_languages_post

        Create Site Language  # noqa: E501
        """
        pass

    def test_create_site_sites_post(self):
        """Test case for create_site_sites_post

        Create Site  # noqa: E501
        """
        pass

    def test_delete_site_language_site_languages_site_language_id_delete(self):
        """Test case for delete_site_language_site_languages_site_language_id_delete

        Delete Site Language  # noqa: E501
        """
        pass

    def test_delete_site_sites_site_id_delete(self):
        """Test case for delete_site_sites_site_id_delete

        Delete Site  # noqa: E501
        """
        pass

    def test_read_site_language_site_languages_site_language_id_get(self):
        """Test case for read_site_language_site_languages_site_language_id_get

        Read Site Language  # noqa: E501
        """
        pass

    def test_read_site_languages_site_languages_get(self):
        """Test case for read_site_languages_site_languages_get

        Read Site Languages  # noqa: E501
        """
        pass

    def test_read_site_sites_site_id_get(self):
        """Test case for read_site_sites_site_id_get

        Read Site  # noqa: E501
        """
        pass

    def test_read_sites_sites_get(self):
        """Test case for read_sites_sites_get

        Read Sites  # noqa: E501
        """
        pass

    def test_update_site_language_site_languages_site_language_id_patch(self):
        """Test case for update_site_language_site_languages_site_language_id_patch

        Update Site Language  # noqa: E501
        """
        pass

    def test_update_site_sites_site_id_patch(self):
        """Test case for update_site_sites_site_id_patch

        Update Site  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
