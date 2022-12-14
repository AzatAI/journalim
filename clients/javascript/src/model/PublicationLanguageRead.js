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
 * The PublicationLanguageRead model module.
 * @module model/PublicationLanguageRead
 * @version 0.0.1
 */
export class PublicationLanguageRead {
  /**
   * Constructs a new <code>PublicationLanguageRead</code>.
   * @alias module:model/PublicationLanguageRead
   * @class
   * @param id {Number} 
   */
  constructor(id) {
    this.id = id;
  }

  /**
   * Constructs a <code>PublicationLanguageRead</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/PublicationLanguageRead} obj Optional instance to populate.
   * @return {module:model/PublicationLanguageRead} The populated <code>PublicationLanguageRead</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new PublicationLanguageRead();
      if (data.hasOwnProperty('created_at'))
        obj.createdAt = ApiClient.convertToType(data['created_at'], 'Date');
      if (data.hasOwnProperty('updated_at'))
        obj.updatedAt = ApiClient.convertToType(data['updated_at'], 'Date');
      if (data.hasOwnProperty('title'))
        obj.title = ApiClient.convertToType(data['title'], 'String');
      if (data.hasOwnProperty('description'))
        obj.description = ApiClient.convertToType(data['description'], 'String');
      if (data.hasOwnProperty('publisher'))
        obj.publisher = ApiClient.convertToType(data['publisher'], 'String');
      if (data.hasOwnProperty('image'))
        obj.image = ApiClient.convertToType(data['image'], 'String');
      if (data.hasOwnProperty('keywords'))
        obj.keywords = ApiClient.convertToType(data['keywords'], 'String');
      if (data.hasOwnProperty('long_description'))
        obj.longDescription = ApiClient.convertToType(data['long_description'], 'String');
      if (data.hasOwnProperty('publication_id'))
        obj.publicationId = ApiClient.convertToType(data['publication_id'], 'Number');
      if (data.hasOwnProperty('language_id'))
        obj.languageId = ApiClient.convertToType(data['language_id'], 'Number');
      if (data.hasOwnProperty('id'))
        obj.id = ApiClient.convertToType(data['id'], 'Number');
    }
    return obj;
  }
}

/**
 * @member {Date} createdAt
 */
PublicationLanguageRead.prototype.createdAt = undefined;

/**
 * @member {Date} updatedAt
 */
PublicationLanguageRead.prototype.updatedAt = undefined;

/**
 * @member {String} title
 */
PublicationLanguageRead.prototype.title = undefined;

/**
 * @member {String} description
 */
PublicationLanguageRead.prototype.description = undefined;

/**
 * @member {String} publisher
 */
PublicationLanguageRead.prototype.publisher = undefined;

/**
 * @member {String} image
 */
PublicationLanguageRead.prototype.image = undefined;

/**
 * @member {String} keywords
 */
PublicationLanguageRead.prototype.keywords = undefined;

/**
 * This can be a very long html or markdown content
 * @member {String} longDescription
 */
PublicationLanguageRead.prototype.longDescription = undefined;

/**
 * @member {Number} publicationId
 */
PublicationLanguageRead.prototype.publicationId = undefined;

/**
 * @member {Number} languageId
 */
PublicationLanguageRead.prototype.languageId = undefined;

/**
 * @member {Number} id
 */
PublicationLanguageRead.prototype.id = undefined;

