/*
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

package io.swagger.client.api;

import io.swagger.client.model.ErrorResponseModel;
import io.swagger.client.model.HTTPValidationError;
import io.swagger.client.model.PublicationCreate;
import io.swagger.client.model.PublicationLanguageCreate;
import io.swagger.client.model.PublicationLanguageRead;
import io.swagger.client.model.PublicationLanguageUpdate;
import io.swagger.client.model.PublicationRead;
import io.swagger.client.model.PublicationUpdate;
import io.swagger.client.model.SuccessResponseModel;
import org.junit.Test;
import org.junit.Ignore;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * API tests for PublicationApi
 */
@Ignore
public class PublicationApiTest {

    private final PublicationApi api = new PublicationApi();

    /**
     * Create Publication Language
     *
     * Create a PublicationLanguage.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void createPublicationLanguagePublicationLanguagesPostTest() throws Exception {
        PublicationLanguageCreate body = null;
        PublicationLanguageRead response = api.createPublicationLanguagePublicationLanguagesPost(body);

        // TODO: test validations
    }
    /**
     * Create Publication
     *
     * Create a Publication.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void createPublicationPublicationsPostTest() throws Exception {
        PublicationCreate body = null;
        PublicationRead response = api.createPublicationPublicationsPost(body);

        // TODO: test validations
    }
    /**
     * Delete Publication Language
     *
     * 
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDeleteTest() throws Exception {
        Integer publicationLanguageId = null;
        SuccessResponseModel response = api.deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete(publicationLanguageId);

        // TODO: test validations
    }
    /**
     * Delete Publication
     *
     * 
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void deletePublicationPublicationsPublicationIdDeleteTest() throws Exception {
        Integer publicationId = null;
        SuccessResponseModel response = api.deletePublicationPublicationsPublicationIdDelete(publicationId);

        // TODO: test validations
    }
    /**
     * Read Publication Language
     *
     * 
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void readPublicationLanguagePublicationLanguagesPublicationLanguageIdGetTest() throws Exception {
        Integer publicationLanguageId = null;
        PublicationLanguageRead response = api.readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet(publicationLanguageId);

        // TODO: test validations
    }
    /**
     * Read Publication Languages
     *
     * Get all PublicationLanguage.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void readPublicationLanguagesPublicationLanguagesGetTest() throws Exception {
        String q = null;
        Integer offset = null;
        Integer limit = null;
        List<PublicationLanguageRead> response = api.readPublicationLanguagesPublicationLanguagesGet(q, offset, limit);

        // TODO: test validations
    }
    /**
     * Read Publication
     *
     * 
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void readPublicationPublicationsPublicationIdGetTest() throws Exception {
        Integer publicationId = null;
        PublicationRead response = api.readPublicationPublicationsPublicationIdGet(publicationId);

        // TODO: test validations
    }
    /**
     * Read Publications
     *
     * Get all Publication.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void readPublicationsPublicationsGetTest() throws Exception {
        String q = null;
        Integer offset = null;
        Integer limit = null;
        List<PublicationRead> response = api.readPublicationsPublicationsGet(q, offset, limit);

        // TODO: test validations
    }
    /**
     * Update Publication Language
     *
     * 
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatchTest() throws Exception {
        PublicationLanguageUpdate body = null;
        Integer publicationLanguageId = null;
        PublicationLanguageRead response = api.updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch(body, publicationLanguageId);

        // TODO: test validations
    }
    /**
     * Update Publication
     *
     * 
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void updatePublicationPublicationsPublicationIdPatchTest() throws Exception {
        PublicationUpdate body = null;
        Integer publicationId = null;
        PublicationRead response = api.updatePublicationPublicationsPublicationIdPatch(body, publicationId);

        // TODO: test validations
    }
}
