# coding: utf-8

"""
    JBS Backend Service

    Journalim Protocol Compatible Backend Service  # noqa: E501

    OpenAPI spec version: 0.0.1
    Contact: a@azat.ai
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

import pprint
import re  # noqa: F401

import six

class SiteCreate(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """
    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'title': 'str',
        'description': 'str',
        'logo': 'str',
        'site_url': 'str'
    }

    attribute_map = {
        'title': 'title',
        'description': 'description',
        'logo': 'logo',
        'site_url': 'site_url'
    }

    def __init__(self, title=None, description=None, logo=None, site_url=None):  # noqa: E501
        """SiteCreate - a model defined in Swagger"""  # noqa: E501
        self._title = None
        self._description = None
        self._logo = None
        self._site_url = None
        self.discriminator = None
        self.title = title
        if description is not None:
            self.description = description
        if logo is not None:
            self.logo = logo
        if site_url is not None:
            self.site_url = site_url

    @property
    def title(self):
        """Gets the title of this SiteCreate.  # noqa: E501


        :return: The title of this SiteCreate.  # noqa: E501
        :rtype: str
        """
        return self._title

    @title.setter
    def title(self, title):
        """Sets the title of this SiteCreate.


        :param title: The title of this SiteCreate.  # noqa: E501
        :type: str
        """
        if title is None:
            raise ValueError("Invalid value for `title`, must not be `None`")  # noqa: E501

        self._title = title

    @property
    def description(self):
        """Gets the description of this SiteCreate.  # noqa: E501


        :return: The description of this SiteCreate.  # noqa: E501
        :rtype: str
        """
        return self._description

    @description.setter
    def description(self, description):
        """Sets the description of this SiteCreate.


        :param description: The description of this SiteCreate.  # noqa: E501
        :type: str
        """

        self._description = description

    @property
    def logo(self):
        """Gets the logo of this SiteCreate.  # noqa: E501


        :return: The logo of this SiteCreate.  # noqa: E501
        :rtype: str
        """
        return self._logo

    @logo.setter
    def logo(self, logo):
        """Sets the logo of this SiteCreate.


        :param logo: The logo of this SiteCreate.  # noqa: E501
        :type: str
        """

        self._logo = logo

    @property
    def site_url(self):
        """Gets the site_url of this SiteCreate.  # noqa: E501


        :return: The site_url of this SiteCreate.  # noqa: E501
        :rtype: str
        """
        return self._site_url

    @site_url.setter
    def site_url(self, site_url):
        """Sets the site_url of this SiteCreate.


        :param site_url: The site_url of this SiteCreate.  # noqa: E501
        :type: str
        """

        self._site_url = site_url

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value
        if issubclass(SiteCreate, dict):
            for key, value in self.items():
                result[key] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, SiteCreate):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
