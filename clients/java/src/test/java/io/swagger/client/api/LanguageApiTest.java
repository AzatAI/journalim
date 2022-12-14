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
import io.swagger.client.model.LanguageCreate;
import io.swagger.client.model.LanguageRead;
import io.swagger.client.model.LanguageUpdate;
import io.swagger.client.model.SuccessResponseModel;
import org.junit.Test;
import org.junit.Ignore;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * API tests for LanguageApi
 */
@Ignore
public class LanguageApiTest {

    private final LanguageApi api = new LanguageApi();

    /**
     * Create Language
     *
     * Create a Language.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void createLanguageLanguagesPostTest() throws Exception {
        LanguageCreate body = null;
        LanguageRead response = api.createLanguageLanguagesPost(body);

        // TODO: test validations
    }
    /**
     * Delete Language
     *
     * 
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void deleteLanguageLanguagesLanguageIdDeleteTest() throws Exception {
        Integer languageId = null;
        SuccessResponseModel response = api.deleteLanguageLanguagesLanguageIdDelete(languageId);

        // TODO: test validations
    }
    /**
     * Read Language
     *
     * 
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void readLanguageLanguagesLanguageIdGetTest() throws Exception {
        Integer languageId = null;
        LanguageRead response = api.readLanguageLanguagesLanguageIdGet(languageId);

        // TODO: test validations
    }
    /**
     * Read Languages
     *
     * Get all Language.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void readLanguagesLanguagesGetTest() throws Exception {
        String q = null;
        Integer offset = null;
        Integer limit = null;
        List<LanguageRead> response = api.readLanguagesLanguagesGet(q, offset, limit);

        // TODO: test validations
    }
    /**
     * Update Language
     *
     * 
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void updateLanguageLanguagesLanguageIdPatchTest() throws Exception {
        LanguageUpdate body = null;
        Integer languageId = null;
        LanguageRead response = api.updateLanguageLanguagesLanguageIdPatch(body, languageId);

        // TODO: test validations
    }
}
