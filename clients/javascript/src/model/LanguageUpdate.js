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
 * The LanguageUpdate model module.
 * @module model/LanguageUpdate
 * @version 0.0.1
 */
export class LanguageUpdate {
  /**
   * Constructs a new <code>LanguageUpdate</code>.
   * @alias module:model/LanguageUpdate
   * @class
   */
  constructor() {
  }

  /**
   * Constructs a <code>LanguageUpdate</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/LanguageUpdate} obj Optional instance to populate.
   * @return {module:model/LanguageUpdate} The populated <code>LanguageUpdate</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new LanguageUpdate();
      if (data.hasOwnProperty('code'))
        obj.code = ApiClient.convertToType(data['code'], 'String');
      if (data.hasOwnProperty('name_local'))
        obj.nameLocal = ApiClient.convertToType(data['name_local'], 'String');
      if (data.hasOwnProperty('name_global'))
        obj.nameGlobal = ApiClient.convertToType(data['name_global'], 'String');
    }
    return obj;
  }
}

/**
 * @member {String} code
 */
LanguageUpdate.prototype.code = undefined;

/**
 * @member {String} nameLocal
 */
LanguageUpdate.prototype.nameLocal = undefined;

/**
 * @member {String} nameGlobal
 */
LanguageUpdate.prototype.nameGlobal = undefined;

