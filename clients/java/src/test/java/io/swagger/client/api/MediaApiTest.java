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
import java.io.File;
import io.swagger.client.model.GenericFileUploadResponse;
import io.swagger.client.model.HTTPValidationError;
import io.swagger.client.model.MediaRead;
import io.swagger.client.model.MediaUpdate;
import io.swagger.client.model.SuccessResponseModel;
import org.junit.Test;
import org.junit.Ignore;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * API tests for MediaApi
 */
@Ignore
public class MediaApiTest {

    private final MediaApi api = new MediaApi();

    /**
     * Create Upload
     *
     * Upload a file to the server.   This file later can be served to user either publicly or privately(for signed-in users only)   Hints: Private files can be used for creating new issue attachments (PDFs)!   &lt;span style:\&quot;color:red\&quot;&gt;WARN&lt;/span&gt; : Uploading files with same filename might overwrite the existing files.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void createUploadUploadPostTest() throws Exception {
        File file = null;
        Boolean _public = null;
        GenericFileUploadResponse response = api.createUploadUploadPost(file, _public);

        // TODO: test validations
    }
    /**
     * Delete Media
     *
     * 
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void deleteMediaMediasMediaIdDeleteTest() throws Exception {
        Integer mediaId = null;
        SuccessResponseModel response = api.deleteMediaMediasMediaIdDelete(mediaId);

        // TODO: test validations
    }
    /**
     * Read Media
     *
     * 
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void readMediaMediasMediaIdGetTest() throws Exception {
        Integer mediaId = null;
        MediaRead response = api.readMediaMediasMediaIdGet(mediaId);

        // TODO: test validations
    }
    /**
     * Read Medias
     *
     * Get all Media.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void readMediasMediasGetTest() throws Exception {
        String q = null;
        Integer offset = null;
        Integer limit = null;
        List<MediaRead> response = api.readMediasMediasGet(q, offset, limit);

        // TODO: test validations
    }
    /**
     * Update Media
     *
     * 
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void updateMediaMediasMediaIdPatchTest() throws Exception {
        MediaUpdate body = null;
        Integer mediaId = null;
        MediaRead response = api.updateMediaMediasMediaIdPatch(body, mediaId);

        // TODO: test validations
    }
}