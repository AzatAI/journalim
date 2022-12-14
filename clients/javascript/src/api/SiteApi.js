/*
 * JBS Backend Service
 * Journalim Protocol Compatible Backend Service
 *
 * OpenAPI spec version: 0.0.1
 * Contact: a@azat.ai
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 3.0.36
 *
 * Do not edit the class manually.
 *
 */
import {ApiClient} from "../ApiClient";
import {ErrorResponseModel} from '../model/ErrorResponseModel';
import {HTTPValidationError} from '../model/HTTPValidationError';
import {SiteCreate} from '../model/SiteCreate';
import {SiteLanguageCreate} from '../model/SiteLanguageCreate';
import {SiteLanguageRead} from '../model/SiteLanguageRead';
import {SiteLanguageUpdate} from '../model/SiteLanguageUpdate';
import {SiteRead} from '../model/SiteRead';
import {SiteUpdate} from '../model/SiteUpdate';
import {SuccessResponseModel} from '../model/SuccessResponseModel';

/**
* Site service.
* @module api/SiteApi
* @version 0.0.1
*/
export class SiteApi {

    /**
    * Constructs a new SiteApi. 
    * @alias module:api/SiteApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instanc
    e} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }

    /**
     * Callback function to receive the result of the createSiteLanguageSiteLanguagesPost operation.
     * @callback moduleapi/SiteApi~createSiteLanguageSiteLanguagesPostCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SiteLanguageRead{ data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Create Site Language
     * Create a SiteLanguage.
     * @param {module:model/SiteLanguageCreate} body 
     * @param {module:api/SiteApi~createSiteLanguageSiteLanguagesPostCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link <&vendorExtensions.x-jsdoc-type>}
     */
    createSiteLanguageSiteLanguagesPost(body, callback) {
      
      let postBody = body;
      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling createSiteLanguageSiteLanguagesPost");
      }

      let pathParams = {
        
      };
      let queryParams = {
        
      };
      let headerParams = {
        
      };
      let formParams = {
        
      };

      let authNames = ['OAuth2PasswordBearer'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = SiteLanguageRead;

      return this.apiClient.callApi(
        '/site_languages', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the createSiteSitesPost operation.
     * @callback moduleapi/SiteApi~createSiteSitesPostCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SiteRead{ data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Create Site
     * Create a Site.
     * @param {module:model/SiteCreate} body 
     * @param {module:api/SiteApi~createSiteSitesPostCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link <&vendorExtensions.x-jsdoc-type>}
     */
    createSiteSitesPost(body, callback) {
      
      let postBody = body;
      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling createSiteSitesPost");
      }

      let pathParams = {
        
      };
      let queryParams = {
        
      };
      let headerParams = {
        
      };
      let formParams = {
        
      };

      let authNames = ['OAuth2PasswordBearer'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = SiteRead;

      return this.apiClient.callApi(
        '/sites', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete operation.
     * @callback moduleapi/SiteApi~deleteSiteLanguageSiteLanguagesSiteLanguageIdDeleteCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SuccessResponseModel{ data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Delete Site Language
     * @param {Number} siteLanguageId 
     * @param {module:api/SiteApi~deleteSiteLanguageSiteLanguagesSiteLanguageIdDeleteCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link <&vendorExtensions.x-jsdoc-type>}
     */
    deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete(siteLanguageId, callback) {
      
      let postBody = null;
      // verify the required parameter 'siteLanguageId' is set
      if (siteLanguageId === undefined || siteLanguageId === null) {
        throw new Error("Missing the required parameter 'siteLanguageId' when calling deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete");
      }

      let pathParams = {
        'site_language_id': siteLanguageId
      };
      let queryParams = {
        
      };
      let headerParams = {
        
      };
      let formParams = {
        
      };

      let authNames = ['OAuth2PasswordBearer'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SuccessResponseModel;

      return this.apiClient.callApi(
        '/site_languages/{site_language_id}', 'DELETE',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the deleteSiteSitesSiteIdDelete operation.
     * @callback moduleapi/SiteApi~deleteSiteSitesSiteIdDeleteCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SuccessResponseModel{ data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Delete Site
     * @param {Number} siteId 
     * @param {module:api/SiteApi~deleteSiteSitesSiteIdDeleteCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link <&vendorExtensions.x-jsdoc-type>}
     */
    deleteSiteSitesSiteIdDelete(siteId, callback) {
      
      let postBody = null;
      // verify the required parameter 'siteId' is set
      if (siteId === undefined || siteId === null) {
        throw new Error("Missing the required parameter 'siteId' when calling deleteSiteSitesSiteIdDelete");
      }

      let pathParams = {
        'site_id': siteId
      };
      let queryParams = {
        
      };
      let headerParams = {
        
      };
      let formParams = {
        
      };

      let authNames = ['OAuth2PasswordBearer'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SuccessResponseModel;

      return this.apiClient.callApi(
        '/sites/{site_id}', 'DELETE',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the readSiteLanguageSiteLanguagesSiteLanguageIdGet operation.
     * @callback moduleapi/SiteApi~readSiteLanguageSiteLanguagesSiteLanguageIdGetCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SiteLanguageRead{ data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Read Site Language
     * @param {Number} siteLanguageId 
     * @param {module:api/SiteApi~readSiteLanguageSiteLanguagesSiteLanguageIdGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link <&vendorExtensions.x-jsdoc-type>}
     */
    readSiteLanguageSiteLanguagesSiteLanguageIdGet(siteLanguageId, callback) {
      
      let postBody = null;
      // verify the required parameter 'siteLanguageId' is set
      if (siteLanguageId === undefined || siteLanguageId === null) {
        throw new Error("Missing the required parameter 'siteLanguageId' when calling readSiteLanguageSiteLanguagesSiteLanguageIdGet");
      }

      let pathParams = {
        'site_language_id': siteLanguageId
      };
      let queryParams = {
        
      };
      let headerParams = {
        
      };
      let formParams = {
        
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SiteLanguageRead;

      return this.apiClient.callApi(
        '/site_languages/{site_language_id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the readSiteLanguagesSiteLanguagesGet operation.
     * @callback moduleapi/SiteApi~readSiteLanguagesSiteLanguagesGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/SiteLanguageRead>{ data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Read Site Languages
     * Get all SiteLanguage.
     * @param {Object} opts Optional parameters
     * @param {String} opts.q 
     * @param {Number} opts.offset  (default to <.>)
     * @param {Number} opts.limit  (default to <.>)
     * @param {module:api/SiteApi~readSiteLanguagesSiteLanguagesGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link <&vendorExtensions.x-jsdoc-type>}
     */
    readSiteLanguagesSiteLanguagesGet(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
        
      };
      let queryParams = {
        'q': opts['q'],'offset': opts['offset'],'limit': opts['limit']
      };
      let headerParams = {
        
      };
      let formParams = {
        
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = [SiteLanguageRead];

      return this.apiClient.callApi(
        '/site_languages', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the readSiteSitesSiteIdGet operation.
     * @callback moduleapi/SiteApi~readSiteSitesSiteIdGetCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SiteRead{ data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Read Site
     * @param {Number} siteId 
     * @param {module:api/SiteApi~readSiteSitesSiteIdGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link <&vendorExtensions.x-jsdoc-type>}
     */
    readSiteSitesSiteIdGet(siteId, callback) {
      
      let postBody = null;
      // verify the required parameter 'siteId' is set
      if (siteId === undefined || siteId === null) {
        throw new Error("Missing the required parameter 'siteId' when calling readSiteSitesSiteIdGet");
      }

      let pathParams = {
        'site_id': siteId
      };
      let queryParams = {
        
      };
      let headerParams = {
        
      };
      let formParams = {
        
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SiteRead;

      return this.apiClient.callApi(
        '/sites/{site_id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the readSitesSitesGet operation.
     * @callback moduleapi/SiteApi~readSitesSitesGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/SiteRead>{ data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Read Sites
     * Get all Site.
     * @param {Object} opts Optional parameters
     * @param {String} opts.q 
     * @param {Number} opts.offset  (default to <.>)
     * @param {Number} opts.limit  (default to <.>)
     * @param {module:api/SiteApi~readSitesSitesGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link <&vendorExtensions.x-jsdoc-type>}
     */
    readSitesSitesGet(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
        
      };
      let queryParams = {
        'q': opts['q'],'offset': opts['offset'],'limit': opts['limit']
      };
      let headerParams = {
        
      };
      let formParams = {
        
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = [SiteRead];

      return this.apiClient.callApi(
        '/sites', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the updateSiteLanguageSiteLanguagesSiteLanguageIdPatch operation.
     * @callback moduleapi/SiteApi~updateSiteLanguageSiteLanguagesSiteLanguageIdPatchCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SiteLanguageRead{ data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Update Site Language
     * @param {module:model/SiteLanguageUpdate} body 
     * @param {Number} siteLanguageId 
     * @param {module:api/SiteApi~updateSiteLanguageSiteLanguagesSiteLanguageIdPatchCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link <&vendorExtensions.x-jsdoc-type>}
     */
    updateSiteLanguageSiteLanguagesSiteLanguageIdPatch(body, siteLanguageId, callback) {
      
      let postBody = body;
      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling updateSiteLanguageSiteLanguagesSiteLanguageIdPatch");
      }
      // verify the required parameter 'siteLanguageId' is set
      if (siteLanguageId === undefined || siteLanguageId === null) {
        throw new Error("Missing the required parameter 'siteLanguageId' when calling updateSiteLanguageSiteLanguagesSiteLanguageIdPatch");
      }

      let pathParams = {
        'site_language_id': siteLanguageId
      };
      let queryParams = {
        
      };
      let headerParams = {
        
      };
      let formParams = {
        
      };

      let authNames = ['OAuth2PasswordBearer'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = SiteLanguageRead;

      return this.apiClient.callApi(
        '/site_languages/{site_language_id}', 'PATCH',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the updateSiteSitesSiteIdPatch operation.
     * @callback moduleapi/SiteApi~updateSiteSitesSiteIdPatchCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SiteRead{ data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Update Site
     * @param {module:model/SiteUpdate} body 
     * @param {Number} siteId 
     * @param {module:api/SiteApi~updateSiteSitesSiteIdPatchCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link <&vendorExtensions.x-jsdoc-type>}
     */
    updateSiteSitesSiteIdPatch(body, siteId, callback) {
      
      let postBody = body;
      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling updateSiteSitesSiteIdPatch");
      }
      // verify the required parameter 'siteId' is set
      if (siteId === undefined || siteId === null) {
        throw new Error("Missing the required parameter 'siteId' when calling updateSiteSitesSiteIdPatch");
      }

      let pathParams = {
        'site_id': siteId
      };
      let queryParams = {
        
      };
      let headerParams = {
        
      };
      let formParams = {
        
      };

      let authNames = ['OAuth2PasswordBearer'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = SiteRead;

      return this.apiClient.callApi(
        '/sites/{site_id}', 'PATCH',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

}