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
 * @param title 
 * @param description 
 * @param keywords 
 * @param author 
 * @param featuredImage 
 * @param content 
 * @param siteId A Post must belongs to one of the site.
 */
data class PostCreate (

    val title: kotlin.String,
    val description: kotlin.String? = null,
    val keywords: kotlin.String? = null,
    val author: kotlin.String? = null,
    val featuredImage: kotlin.String? = null,
    val content: kotlin.String? = null,
    /* A Post must belongs to one of the site. */
    val siteId: kotlin.Int? = null
) {
}