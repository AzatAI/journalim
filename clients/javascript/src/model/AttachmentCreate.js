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
 * The AttachmentCreate model module.
 * @module model/AttachmentCreate
 * @version 0.0.1
 */
export class AttachmentCreate {
  /**
   * Constructs a new <code>AttachmentCreate</code>.
   * @alias module:model/AttachmentCreate
   * @class
   * @param name {String} 
   * @param path {String} 
   * @param contentType {String} 
   */
  constructor(name, path, contentType) {
    this.name = name;
    this.path = path;
    this.contentType = contentType;
  }

  /**
   * Constructs a <code>AttachmentCreate</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/AttachmentCreate} obj Optional instance to populate.
   * @return {module:model/AttachmentCreate} The populated <code>AttachmentCreate</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new AttachmentCreate();
      if (data.hasOwnProperty('name'))
        obj.name = ApiClient.convertToType(data['name'], 'String');
      if (data.hasOwnProperty('path'))
        obj.path = ApiClient.convertToType(data['path'], 'String');
      if (data.hasOwnProperty('content_type'))
        obj.contentType = ApiClient.convertToType(data['content_type'], 'String');
      if (data.hasOwnProperty('description'))
        obj.description = ApiClient.convertToType(data['description'], 'String');
      if (data.hasOwnProperty('access_url'))
        obj.accessUrl = ApiClient.convertToType(data['access_url'], 'String');
      if (data.hasOwnProperty('access_type'))
        obj.accessType = ApiClient.convertToType(data['access_type'], 'String');
      if (data.hasOwnProperty('issue_id'))
        obj.issueId = ApiClient.convertToType(data['issue_id'], 'Number');
    }
    return obj;
  }
}

/**
 * @member {String} name
 */
AttachmentCreate.prototype.name = undefined;

/**
 * @member {String} path
 */
AttachmentCreate.prototype.path = undefined;

/**
 * @member {String} contentType
 */
AttachmentCreate.prototype.contentType = undefined;

/**
 * @member {String} description
 */
AttachmentCreate.prototype.description = undefined;

/**
 * @member {String} accessUrl
 */
AttachmentCreate.prototype.accessUrl = undefined;

/**
 * @member {String} accessType
 */
AttachmentCreate.prototype.accessType = undefined;

/**
 * @member {Number} issueId
 */
AttachmentCreate.prototype.issueId = undefined;
