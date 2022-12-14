# swagger-client
Journalim Protocol Compatible Backend Service

This Python package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.0.1
- Package version: 1.0.0
- Build package: io.swagger.codegen.v3.generators.python.PythonClientCodegen
For more information, please visit [https://azat.cc](https://azat.cc)

## Requirements.

Python 2.7 and 3.4+

## Installation & Usage
### pip install

If the python package is hosted on Github, you can install directly from Github

```sh
pip install git+https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```
(you may need to run `pip` with root permission: `sudo pip install git+https://github.com/GIT_USER_ID/GIT_REPO_ID.git`)

Then import the package:
```python
import swagger_client 
```

### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```sh
python setup.py install --user
```
(or `sudo python setup.py install` to install the package for all users)

Then import the package:
```python
import swagger_client
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
configuration = swagger_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = swagger_client.AttachmentApi(swagger_client.ApiClient(configuration))
body = swagger_client.AttachmentCreate() # AttachmentCreate | 

try:
    # Create Attachment
    api_response = api_instance.create_attachment_attachments_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AttachmentApi->create_attachment_attachments_post: %s\n" % e)

# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
configuration = swagger_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = swagger_client.AttachmentApi(swagger_client.ApiClient(configuration))
attachment_id = 56 # int | 

try:
    # Delete Attachment
    api_response = api_instance.delete_attachment_attachments_attachment_id_delete(attachment_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AttachmentApi->delete_attachment_attachments_attachment_id_delete: %s\n" % e)

# create an instance of the API class
api_instance = swagger_client.AttachmentApi(swagger_client.ApiClient(configuration))
attachment_id = 56 # int | 

try:
    # Read Attachment
    api_response = api_instance.read_attachment_attachments_attachment_id_get(attachment_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AttachmentApi->read_attachment_attachments_attachment_id_get: %s\n" % e)

# create an instance of the API class
api_instance = swagger_client.AttachmentApi(swagger_client.ApiClient(configuration))
q = 'q_example' # str |  (optional)
offset = 0 # int |  (optional) (default to 0)
limit = 100 # int |  (optional) (default to 100)

try:
    # Read Attachments
    api_response = api_instance.read_attachments_attachments_get(q=q, offset=offset, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AttachmentApi->read_attachments_attachments_get: %s\n" % e)

# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
configuration = swagger_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = swagger_client.AttachmentApi(swagger_client.ApiClient(configuration))
body = swagger_client.AttachmentUpdate() # AttachmentUpdate | 
attachment_id = 56 # int | 

try:
    # Update Attachment
    api_response = api_instance.update_attachment_attachments_attachment_id_patch(body, attachment_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AttachmentApi->update_attachment_attachments_attachment_id_patch: %s\n" % e)
```

## Documentation for API Endpoints

All URIs are relative to *http://journalim.gepsoz.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AttachmentApi* | [**create_attachment_attachments_post**](docs/AttachmentApi.md#create_attachment_attachments_post) | **POST** /attachments | Create Attachment
*AttachmentApi* | [**delete_attachment_attachments_attachment_id_delete**](docs/AttachmentApi.md#delete_attachment_attachments_attachment_id_delete) | **DELETE** /attachments/{attachment_id} | Delete Attachment
*AttachmentApi* | [**read_attachment_attachments_attachment_id_get**](docs/AttachmentApi.md#read_attachment_attachments_attachment_id_get) | **GET** /attachments/{attachment_id} | Read Attachment
*AttachmentApi* | [**read_attachments_attachments_get**](docs/AttachmentApi.md#read_attachments_attachments_get) | **GET** /attachments | Read Attachments
*AttachmentApi* | [**update_attachment_attachments_attachment_id_patch**](docs/AttachmentApi.md#update_attachment_attachments_attachment_id_patch) | **PATCH** /attachments/{attachment_id} | Update Attachment
*IssueApi* | [**create_issue_issues_post**](docs/IssueApi.md#create_issue_issues_post) | **POST** /issues | Create Issue
*IssueApi* | [**create_issue_language_issue_languages_post**](docs/IssueApi.md#create_issue_language_issue_languages_post) | **POST** /issue_languages | Create Issue Language
*IssueApi* | [**delete_issue_issues_issue_id_delete**](docs/IssueApi.md#delete_issue_issues_issue_id_delete) | **DELETE** /issues/{issue_id} | Delete Issue
*IssueApi* | [**delete_issue_language_issue_languages_issue_language_id_delete**](docs/IssueApi.md#delete_issue_language_issue_languages_issue_language_id_delete) | **DELETE** /issue_languages/{issue_language_id} | Delete Issue Language
*IssueApi* | [**read_issue_issues_issue_id_get**](docs/IssueApi.md#read_issue_issues_issue_id_get) | **GET** /issues/{issue_id} | Read Issue
*IssueApi* | [**read_issue_language_issue_languages_issue_language_id_get**](docs/IssueApi.md#read_issue_language_issue_languages_issue_language_id_get) | **GET** /issue_languages/{issue_language_id} | Read Issue Language
*IssueApi* | [**read_issue_languages_issue_languages_get**](docs/IssueApi.md#read_issue_languages_issue_languages_get) | **GET** /issue_languages | Read Issue Languages
*IssueApi* | [**read_issues_issues_get**](docs/IssueApi.md#read_issues_issues_get) | **GET** /issues | Read Issues
*IssueApi* | [**update_issue_issues_issue_id_patch**](docs/IssueApi.md#update_issue_issues_issue_id_patch) | **PATCH** /issues/{issue_id} | Update Issue
*IssueApi* | [**update_issue_language_issue_languages_issue_language_id_patch**](docs/IssueApi.md#update_issue_language_issue_languages_issue_language_id_patch) | **PATCH** /issue_languages/{issue_language_id} | Update Issue Language
*LanguageApi* | [**create_language_languages_post**](docs/LanguageApi.md#create_language_languages_post) | **POST** /languages | Create Language
*LanguageApi* | [**delete_language_languages_language_id_delete**](docs/LanguageApi.md#delete_language_languages_language_id_delete) | **DELETE** /languages/{language_id} | Delete Language
*LanguageApi* | [**read_language_languages_language_id_get**](docs/LanguageApi.md#read_language_languages_language_id_get) | **GET** /languages/{language_id} | Read Language
*LanguageApi* | [**read_languages_languages_get**](docs/LanguageApi.md#read_languages_languages_get) | **GET** /languages | Read Languages
*LanguageApi* | [**update_language_languages_language_id_patch**](docs/LanguageApi.md#update_language_languages_language_id_patch) | **PATCH** /languages/{language_id} | Update Language
*MediaApi* | [**create_upload_upload_post**](docs/MediaApi.md#create_upload_upload_post) | **POST** /upload | Create Upload
*MediaApi* | [**delete_media_medias_media_id_delete**](docs/MediaApi.md#delete_media_medias_media_id_delete) | **DELETE** /medias/{media_id} | Delete Media
*MediaApi* | [**read_media_medias_media_id_get**](docs/MediaApi.md#read_media_medias_media_id_get) | **GET** /medias/{media_id} | Read Media
*MediaApi* | [**read_medias_medias_get**](docs/MediaApi.md#read_medias_medias_get) | **GET** /medias | Read Medias
*MediaApi* | [**update_media_medias_media_id_patch**](docs/MediaApi.md#update_media_medias_media_id_patch) | **PATCH** /medias/{media_id} | Update Media
*PageApi* | [**create_page_language_page_languages_post**](docs/PageApi.md#create_page_language_page_languages_post) | **POST** /page_languages | Create Page Language
*PageApi* | [**create_page_pages_post**](docs/PageApi.md#create_page_pages_post) | **POST** /pages | Create Page
*PageApi* | [**delete_page_language_page_languages_page_language_id_delete**](docs/PageApi.md#delete_page_language_page_languages_page_language_id_delete) | **DELETE** /page_languages/{page_language_id} | Delete Page Language
*PageApi* | [**delete_page_pages_page_id_delete**](docs/PageApi.md#delete_page_pages_page_id_delete) | **DELETE** /pages/{page_id} | Delete Page
*PageApi* | [**read_page_language_page_languages_page_language_id_get**](docs/PageApi.md#read_page_language_page_languages_page_language_id_get) | **GET** /page_languages/{page_language_id} | Read Page Language
*PageApi* | [**read_page_languages_page_languages_get**](docs/PageApi.md#read_page_languages_page_languages_get) | **GET** /page_languages | Read Page Languages
*PageApi* | [**read_page_pages_page_id_get**](docs/PageApi.md#read_page_pages_page_id_get) | **GET** /pages/{page_id} | Read Page
*PageApi* | [**read_pages_pages_get**](docs/PageApi.md#read_pages_pages_get) | **GET** /pages | Read Pages
*PageApi* | [**update_page_language_page_languages_page_language_id_patch**](docs/PageApi.md#update_page_language_page_languages_page_language_id_patch) | **PATCH** /page_languages/{page_language_id} | Update Page Language
*PageApi* | [**update_page_pages_page_id_patch**](docs/PageApi.md#update_page_pages_page_id_patch) | **PATCH** /pages/{page_id} | Update Page
*PostApi* | [**create_post_language_post_languages_post**](docs/PostApi.md#create_post_language_post_languages_post) | **POST** /post_languages | Create Post Language
*PostApi* | [**create_post_posts_post**](docs/PostApi.md#create_post_posts_post) | **POST** /posts | Create Post
*PostApi* | [**delete_post_language_post_languages_post_language_id_delete**](docs/PostApi.md#delete_post_language_post_languages_post_language_id_delete) | **DELETE** /post_languages/{post_language_id} | Delete Post Language
*PostApi* | [**delete_post_posts_post_id_delete**](docs/PostApi.md#delete_post_posts_post_id_delete) | **DELETE** /posts/{post_id} | Delete Post
*PostApi* | [**read_post_language_post_languages_post_language_id_get**](docs/PostApi.md#read_post_language_post_languages_post_language_id_get) | **GET** /post_languages/{post_language_id} | Read Post Language
*PostApi* | [**read_post_languages_post_languages_get**](docs/PostApi.md#read_post_languages_post_languages_get) | **GET** /post_languages | Read Post Languages
*PostApi* | [**read_post_posts_post_id_get**](docs/PostApi.md#read_post_posts_post_id_get) | **GET** /posts/{post_id} | Read Post
*PostApi* | [**read_posts_posts_get**](docs/PostApi.md#read_posts_posts_get) | **GET** /posts | Read Posts
*PostApi* | [**update_post_language_post_languages_post_language_id_patch**](docs/PostApi.md#update_post_language_post_languages_post_language_id_patch) | **PATCH** /post_languages/{post_language_id} | Update Post Language
*PostApi* | [**update_post_posts_post_id_patch**](docs/PostApi.md#update_post_posts_post_id_patch) | **PATCH** /posts/{post_id} | Update Post
*PublicationApi* | [**create_publication_language_publication_languages_post**](docs/PublicationApi.md#create_publication_language_publication_languages_post) | **POST** /publication_languages | Create Publication Language
*PublicationApi* | [**create_publication_publications_post**](docs/PublicationApi.md#create_publication_publications_post) | **POST** /publications | Create Publication
*PublicationApi* | [**delete_publication_language_publication_languages_publication_language_id_delete**](docs/PublicationApi.md#delete_publication_language_publication_languages_publication_language_id_delete) | **DELETE** /publication_languages/{publication_language_id} | Delete Publication Language
*PublicationApi* | [**delete_publication_publications_publication_id_delete**](docs/PublicationApi.md#delete_publication_publications_publication_id_delete) | **DELETE** /publications/{publication_id} | Delete Publication
*PublicationApi* | [**read_publication_language_publication_languages_publication_language_id_get**](docs/PublicationApi.md#read_publication_language_publication_languages_publication_language_id_get) | **GET** /publication_languages/{publication_language_id} | Read Publication Language
*PublicationApi* | [**read_publication_languages_publication_languages_get**](docs/PublicationApi.md#read_publication_languages_publication_languages_get) | **GET** /publication_languages | Read Publication Languages
*PublicationApi* | [**read_publication_publications_publication_id_get**](docs/PublicationApi.md#read_publication_publications_publication_id_get) | **GET** /publications/{publication_id} | Read Publication
*PublicationApi* | [**read_publications_publications_get**](docs/PublicationApi.md#read_publications_publications_get) | **GET** /publications | Read Publications
*PublicationApi* | [**update_publication_language_publication_languages_publication_language_id_patch**](docs/PublicationApi.md#update_publication_language_publication_languages_publication_language_id_patch) | **PATCH** /publication_languages/{publication_language_id} | Update Publication Language
*PublicationApi* | [**update_publication_publications_publication_id_patch**](docs/PublicationApi.md#update_publication_publications_publication_id_patch) | **PATCH** /publications/{publication_id} | Update Publication
*SiteApi* | [**create_site_language_site_languages_post**](docs/SiteApi.md#create_site_language_site_languages_post) | **POST** /site_languages | Create Site Language
*SiteApi* | [**create_site_sites_post**](docs/SiteApi.md#create_site_sites_post) | **POST** /sites | Create Site
*SiteApi* | [**delete_site_language_site_languages_site_language_id_delete**](docs/SiteApi.md#delete_site_language_site_languages_site_language_id_delete) | **DELETE** /site_languages/{site_language_id} | Delete Site Language
*SiteApi* | [**delete_site_sites_site_id_delete**](docs/SiteApi.md#delete_site_sites_site_id_delete) | **DELETE** /sites/{site_id} | Delete Site
*SiteApi* | [**read_site_language_site_languages_site_language_id_get**](docs/SiteApi.md#read_site_language_site_languages_site_language_id_get) | **GET** /site_languages/{site_language_id} | Read Site Language
*SiteApi* | [**read_site_languages_site_languages_get**](docs/SiteApi.md#read_site_languages_site_languages_get) | **GET** /site_languages | Read Site Languages
*SiteApi* | [**read_site_sites_site_id_get**](docs/SiteApi.md#read_site_sites_site_id_get) | **GET** /sites/{site_id} | Read Site
*SiteApi* | [**read_sites_sites_get**](docs/SiteApi.md#read_sites_sites_get) | **GET** /sites | Read Sites
*SiteApi* | [**update_site_language_site_languages_site_language_id_patch**](docs/SiteApi.md#update_site_language_site_languages_site_language_id_patch) | **PATCH** /site_languages/{site_language_id} | Update Site Language
*SiteApi* | [**update_site_sites_site_id_patch**](docs/SiteApi.md#update_site_sites_site_id_patch) | **PATCH** /sites/{site_id} | Update Site
*TokenApi* | [**create_token_token_post**](docs/TokenApi.md#create_token_token_post) | **POST** /token | Create Token
*UserApi* | [**create_user_users_post**](docs/UserApi.md#create_user_users_post) | **POST** /users | Create User
*UserApi* | [**delete_user_users_user_id_delete**](docs/UserApi.md#delete_user_users_user_id_delete) | **DELETE** /users/{user_id} | Delete User
*UserApi* | [**get_current_user_users_me_get**](docs/UserApi.md#get_current_user_users_me_get) | **GET** /users/me | Get Current User
*UserApi* | [**get_user_users_user_id_get**](docs/UserApi.md#get_user_users_user_id_get) | **GET** /users/{user_id} | Get User
*UserApi* | [**get_users_users_get**](docs/UserApi.md#get_users_users_get) | **GET** /users | Get Users
*UserApi* | [**update_user_users_user_id_patch**](docs/UserApi.md#update_user_users_user_id_patch) | **PATCH** /users/{user_id} | Update User
*DefaultApi* | [**ping_ping_get**](docs/DefaultApi.md#ping_ping_get) | **GET** /ping | Ping

## Documentation For Models

 - [AnyOfGenericFileUploadResponsePath](docs/AnyOfGenericFileUploadResponsePath.md)
 - [AnyOfValidationErrorLocItems](docs/AnyOfValidationErrorLocItems.md)
 - [AttachmentCreate](docs/AttachmentCreate.md)
 - [AttachmentRead](docs/AttachmentRead.md)
 - [AttachmentUpdate](docs/AttachmentUpdate.md)
 - [BodyCreateTokenTokenPost](docs/BodyCreateTokenTokenPost.md)
 - [BodyCreateUploadUploadPost](docs/BodyCreateUploadUploadPost.md)
 - [ErrorResponseModel](docs/ErrorResponseModel.md)
 - [GenericFileUploadResponse](docs/GenericFileUploadResponse.md)
 - [HTTPValidationError](docs/HTTPValidationError.md)
 - [IssueCreate](docs/IssueCreate.md)
 - [IssueLanguageCreate](docs/IssueLanguageCreate.md)
 - [IssueLanguageRead](docs/IssueLanguageRead.md)
 - [IssueLanguageUpdate](docs/IssueLanguageUpdate.md)
 - [IssueRead](docs/IssueRead.md)
 - [IssueUpdate](docs/IssueUpdate.md)
 - [LanguageCreate](docs/LanguageCreate.md)
 - [LanguageRead](docs/LanguageRead.md)
 - [LanguageUpdate](docs/LanguageUpdate.md)
 - [MediaRead](docs/MediaRead.md)
 - [MediaUpdate](docs/MediaUpdate.md)
 - [PageCreate](docs/PageCreate.md)
 - [PageLanguageCreate](docs/PageLanguageCreate.md)
 - [PageLanguageRead](docs/PageLanguageRead.md)
 - [PageLanguageUpdate](docs/PageLanguageUpdate.md)
 - [PageRead](docs/PageRead.md)
 - [PageUpdate](docs/PageUpdate.md)
 - [PostCreate](docs/PostCreate.md)
 - [PostLanguageCreate](docs/PostLanguageCreate.md)
 - [PostLanguageRead](docs/PostLanguageRead.md)
 - [PostLanguageUpdate](docs/PostLanguageUpdate.md)
 - [PostRead](docs/PostRead.md)
 - [PostUpdate](docs/PostUpdate.md)
 - [PublicationCreate](docs/PublicationCreate.md)
 - [PublicationLanguageCreate](docs/PublicationLanguageCreate.md)
 - [PublicationLanguageRead](docs/PublicationLanguageRead.md)
 - [PublicationLanguageUpdate](docs/PublicationLanguageUpdate.md)
 - [PublicationRead](docs/PublicationRead.md)
 - [PublicationUpdate](docs/PublicationUpdate.md)
 - [SiteCreate](docs/SiteCreate.md)
 - [SiteLanguageCreate](docs/SiteLanguageCreate.md)
 - [SiteLanguageRead](docs/SiteLanguageRead.md)
 - [SiteLanguageUpdate](docs/SiteLanguageUpdate.md)
 - [SiteRead](docs/SiteRead.md)
 - [SiteUpdate](docs/SiteUpdate.md)
 - [SuccessResponseModel](docs/SuccessResponseModel.md)
 - [Token](docs/Token.md)
 - [UserCreate](docs/UserCreate.md)
 - [UserRead](docs/UserRead.md)
 - [UserUpdate](docs/UserUpdate.md)
 - [ValidationError](docs/ValidationError.md)

## Documentation For Authorization


## OAuth2PasswordBearer

- **Type**: OAuth
- **Flow**: password
- **Authorization URL**: 
- **Scopes**: 


## Author

a@azat.ai
