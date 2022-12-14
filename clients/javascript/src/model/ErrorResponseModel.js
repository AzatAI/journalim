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
 * The ErrorResponseModel model module.
 * @module model/ErrorResponseModel
 * @version 0.0.1
 */
export class ErrorResponseModel {
  /**
   * Constructs a new <code>ErrorResponseModel</code>.
   * @alias module:model/ErrorResponseModel
   * @class
   * @param message {String} 
   */
  constructor(message) {
    this.message = message;
  }

  /**
   * Constructs a <code>ErrorResponseModel</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/ErrorResponseModel} obj Optional instance to populate.
   * @return {module:model/ErrorResponseModel} The populated <code>ErrorResponseModel</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new ErrorResponseModel();
      if (data.hasOwnProperty('message'))
        obj.message = ApiClient.convertToType(data['message'], 'String');
    }
    return obj;
  }
}

/**
 * @member {String} message
 */
ErrorResponseModel.prototype.message = undefined;

