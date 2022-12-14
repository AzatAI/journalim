/**
 * JBS Backend Service
 * Journalim Protocol Compatible Backend Service
 *
 * OpenAPI spec version: 0.0.1
 * Contact: a@azat.ai
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */
package io.swagger.client.models


/**
 * 
 * @param createdAt 
 * @param updatedAt 
 * @param code 
 * @param nameLocal 
 * @param nameGlobal 
 * @param id 
 */
data class LanguageRead (

    val createdAt: java.time.LocalDateTime? = null,
    val updatedAt: java.time.LocalDateTime? = null,
    val code: kotlin.String,
    val nameLocal: kotlin.String,
    val nameGlobal: kotlin.String? = null,
    val id: kotlin.Int
) {
}