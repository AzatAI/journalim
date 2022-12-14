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

class PageLanguageRead(object):
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
        'created_at': 'datetime',
        'updated_at': 'datetime',
        'title': 'str',
        'description': 'str',
        'keywords': 'str',
        'content': 'str',
        'page_id': 'int',
        'language_id': 'int',
        'id': 'int'
    }

    attribute_map = {
        'created_at': 'created_at',
        'updated_at': 'updated_at',
        'title': 'title',
        'description': 'description',
        'keywords': 'keywords',
        'content': 'content',
        'page_id': 'page_id',
        'language_id': 'language_id',
        'id': 'id'
    }

    def __init__(self, created_at=None, updated_at=None, title=None, description=None, keywords=None, content=None, page_id=None, language_id=None, id=None):  # noqa: E501
        """PageLanguageRead - a model defined in Swagger"""  # noqa: E501
        self._created_at = None
        self._updated_at = None
        self._title = None
        self._description = None
        self._keywords = None
        self._content = None
        self._page_id = None
        self._language_id = None
        self._id = None
        self.discriminator = None
        if created_at is not None:
            self.created_at = created_at
        if updated_at is not None:
            self.updated_at = updated_at
        self.title = title
        if description is not None:
            self.description = description
        if keywords is not None:
            self.keywords = keywords
        if content is not None:
            self.content = content
        if page_id is not None:
            self.page_id = page_id
        if language_id is not None:
            self.language_id = language_id
        self.id = id

    @property
    def created_at(self):
        """Gets the created_at of this PageLanguageRead.  # noqa: E501


        :return: The created_at of this PageLanguageRead.  # noqa: E501
        :rtype: datetime
        """
        return self._created_at

    @created_at.setter
    def created_at(self, created_at):
        """Sets the created_at of this PageLanguageRead.


        :param created_at: The created_at of this PageLanguageRead.  # noqa: E501
        :type: datetime
        """

        self._created_at = created_at

    @property
    def updated_at(self):
        """Gets the updated_at of this PageLanguageRead.  # noqa: E501


        :return: The updated_at of this PageLanguageRead.  # noqa: E501
        :rtype: datetime
        """
        return self._updated_at

    @updated_at.setter
    def updated_at(self, updated_at):
        """Sets the updated_at of this PageLanguageRead.


        :param updated_at: The updated_at of this PageLanguageRead.  # noqa: E501
        :type: datetime
        """

        self._updated_at = updated_at

    @property
    def title(self):
        """Gets the title of this PageLanguageRead.  # noqa: E501


        :return: The title of this PageLanguageRead.  # noqa: E501
        :rtype: str
        """
        return self._title

    @title.setter
    def title(self, title):
        """Sets the title of this PageLanguageRead.


        :param title: The title of this PageLanguageRead.  # noqa: E501
        :type: str
        """
        if title is None:
            raise ValueError("Invalid value for `title`, must not be `None`")  # noqa: E501

        self._title = title

    @property
    def description(self):
        """Gets the description of this PageLanguageRead.  # noqa: E501


        :return: The description of this PageLanguageRead.  # noqa: E501
        :rtype: str
        """
        return self._description

    @description.setter
    def description(self, description):
        """Sets the description of this PageLanguageRead.


        :param description: The description of this PageLanguageRead.  # noqa: E501
        :type: str
        """

        self._description = description

    @property
    def keywords(self):
        """Gets the keywords of this PageLanguageRead.  # noqa: E501


        :return: The keywords of this PageLanguageRead.  # noqa: E501
        :rtype: str
        """
        return self._keywords

    @keywords.setter
    def keywords(self, keywords):
        """Sets the keywords of this PageLanguageRead.


        :param keywords: The keywords of this PageLanguageRead.  # noqa: E501
        :type: str
        """

        self._keywords = keywords

    @property
    def content(self):
        """Gets the content of this PageLanguageRead.  # noqa: E501


        :return: The content of this PageLanguageRead.  # noqa: E501
        :rtype: str
        """
        return self._content

    @content.setter
    def content(self, content):
        """Sets the content of this PageLanguageRead.


        :param content: The content of this PageLanguageRead.  # noqa: E501
        :type: str
        """

        self._content = content

    @property
    def page_id(self):
        """Gets the page_id of this PageLanguageRead.  # noqa: E501


        :return: The page_id of this PageLanguageRead.  # noqa: E501
        :rtype: int
        """
        return self._page_id

    @page_id.setter
    def page_id(self, page_id):
        """Sets the page_id of this PageLanguageRead.


        :param page_id: The page_id of this PageLanguageRead.  # noqa: E501
        :type: int
        """

        self._page_id = page_id

    @property
    def language_id(self):
        """Gets the language_id of this PageLanguageRead.  # noqa: E501


        :return: The language_id of this PageLanguageRead.  # noqa: E501
        :rtype: int
        """
        return self._language_id

    @language_id.setter
    def language_id(self, language_id):
        """Sets the language_id of this PageLanguageRead.


        :param language_id: The language_id of this PageLanguageRead.  # noqa: E501
        :type: int
        """

        self._language_id = language_id

    @property
    def id(self):
        """Gets the id of this PageLanguageRead.  # noqa: E501


        :return: The id of this PageLanguageRead.  # noqa: E501
        :rtype: int
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this PageLanguageRead.


        :param id: The id of this PageLanguageRead.  # noqa: E501
        :type: int
        """
        if id is None:
            raise ValueError("Invalid value for `id`, must not be `None`")  # noqa: E501

        self._id = id

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
        if issubclass(PageLanguageRead, dict):
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
        if not isinstance(other, PageLanguageRead):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
