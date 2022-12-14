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
import {ApiClient} from '../ApiClient';

/**
 * The PageUpdate model module.
 * @module model/PageUpdate
 * @version 0.0.1
 */
export class PageUpdate {
  /**
   * Constructs a new <code>PageUpdate</code>.
   * @alias module:model/PageUpdate
   * @class
   */
  constructor() {
  }

  /**
   * Constructs a <code>PageUpdate</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/PageUpdate} obj Optional instance to populate.
   * @return {module:model/PageUpdate} The populated <code>PageUpdate</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new PageUpdate();
      if (data.hasOwnProperty('title'))
        obj.title = ApiClient.convertToType(data['title'], 'String');
      if (data.hasOwnProperty('description'))
        obj.description = ApiClient.convertToType(data['description'], 'String');
      if (data.hasOwnProperty('keywords'))
        obj.keywords = ApiClient.convertToType(data['keywords'], 'String');
      if (data.hasOwnProperty('author'))
        obj.author = ApiClient.convertToType(data['author'], 'String');
      if (data.hasOwnProperty('featured_image'))
        obj.featuredImage = ApiClient.convertToType(data['featured_image'], 'String');
      if (data.hasOwnProperty('content'))
        obj.content = ApiClient.convertToType(data['content'], 'String');
    }
    return obj;
  }
}

/**
 * @member {String} title
 */
PageUpdate.prototype.title = undefined;

/**
 * @member {String} description
 */
PageUpdate.prototype.description = undefined;

/**
 * @member {String} keywords
 */
PageUpdate.prototype.keywords = undefined;

/**
 * @member {String} author
 */
PageUpdate.prototype.author = undefined;

/**
 * @member {String} featuredImage
 */
PageUpdate.prototype.featuredImage = undefined;

/**
 * @member {String} content
 */
PageUpdate.prototype.content = undefined;

