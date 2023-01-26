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
 * The AttachmentRead model module.
 * @module model/AttachmentRead
 * @version 0.0.1
 */
export class AttachmentRead {
  /**
   * Constructs a new <code>AttachmentRead</code>.
   * @alias module:model/AttachmentRead
   * @class
   * @param name {String} 
   * @param path {String} 
   * @param contentType {String} 
   * @param id {Number} 
   */
  constructor(name, path, contentType, id) {
    this.name = name;
    this.path = path;
    this.contentType = contentType;
    this.id = id;
  }

  /**
   * Constructs a <code>AttachmentRead</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/AttachmentRead} obj Optional instance to populate.
   * @return {module:model/AttachmentRead} The populated <code>AttachmentRead</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new AttachmentRead();
      if (data.hasOwnProperty('created_at'))
        obj.createdAt = ApiClient.convertToType(data['created_at'], 'Date');
      if (data.hasOwnProperty('updated_at'))
        obj.updatedAt = ApiClient.convertToType(data['updated_at'], 'Date');
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
      if (data.hasOwnProperty('id'))
        obj.id = ApiClient.convertToType(data['id'], 'Number');
    }
    return obj;
  }
}

/**
 * @member {Date} createdAt
 */
AttachmentRead.prototype.createdAt = undefined;

/**
 * @member {Date} updatedAt
 */
AttachmentRead.prototype.updatedAt = undefined;

/**
 * @member {String} name
 */
AttachmentRead.prototype.name = undefined;

/**
 * @member {String} path
 */
AttachmentRead.prototype.path = undefined;

/**
 * @member {String} contentType
 */
AttachmentRead.prototype.contentType = undefined;

/**
 * @member {String} description
 */
AttachmentRead.prototype.description = undefined;

/**
 * @member {String} accessUrl
 */
AttachmentRead.prototype.accessUrl = undefined;

/**
 * @member {String} accessType
 */
AttachmentRead.prototype.accessType = undefined;

/**
 * @member {Number} issueId
 */
AttachmentRead.prototype.issueId = undefined;

/**
 * @member {Number} id
 */
AttachmentRead.prototype.id = undefined;
