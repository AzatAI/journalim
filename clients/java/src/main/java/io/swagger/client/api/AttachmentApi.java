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

import io.swagger.client.ApiCallback;
import io.swagger.client.ApiClient;
import io.swagger.client.ApiException;
import io.swagger.client.ApiResponse;
import io.swagger.client.Configuration;
import io.swagger.client.Pair;
import io.swagger.client.ProgressRequestBody;
import io.swagger.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import io.swagger.client.model.AttachmentCreate;
import io.swagger.client.model.AttachmentRead;
import io.swagger.client.model.AttachmentUpdate;
import io.swagger.client.model.ErrorResponseModel;
import io.swagger.client.model.HTTPValidationError;
import io.swagger.client.model.SuccessResponseModel;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AttachmentApi {
    private ApiClient apiClient;

    public AttachmentApi() {
        this(Configuration.getDefaultApiClient());
    }

    public AttachmentApi(ApiClient apiClient) {
        this.apiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return apiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.apiClient = apiClient;
    }

    /**
     * Build call for createAttachmentAttachmentsPost
     * @param body  (required)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call createAttachmentAttachmentsPostCall(AttachmentCreate body, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = body;
        
        // create path and map variables
        String localVarPath = "/attachments";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] { "OAuth2PasswordBearer" };
        return apiClient.buildCall(localVarPath, "POST", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }
    
    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call createAttachmentAttachmentsPostValidateBeforeCall(AttachmentCreate body, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        // verify the required parameter 'body' is set
        if (body == null) {
            throw new ApiException("Missing the required parameter 'body' when calling createAttachmentAttachmentsPost(Async)");
        }
        
        com.squareup.okhttp.Call call = createAttachmentAttachmentsPostCall(body, progressListener, progressRequestListener);
        return call;

        
        
        
        
    }

    /**
     * Create Attachment
     * Create a Attachment.
     * @param body  (required)
     * @return AttachmentRead
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public AttachmentRead createAttachmentAttachmentsPost(AttachmentCreate body) throws ApiException {
        ApiResponse<AttachmentRead> resp = createAttachmentAttachmentsPostWithHttpInfo(body);
        return resp.getData();
    }

    /**
     * Create Attachment
     * Create a Attachment.
     * @param body  (required)
     * @return ApiResponse&lt;AttachmentRead&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<AttachmentRead> createAttachmentAttachmentsPostWithHttpInfo(AttachmentCreate body) throws ApiException {
        com.squareup.okhttp.Call call = createAttachmentAttachmentsPostValidateBeforeCall(body, null, null);
        Type localVarReturnType = new TypeToken<AttachmentRead>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * Create Attachment (asynchronously)
     * Create a Attachment.
     * @param body  (required)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call createAttachmentAttachmentsPostAsync(AttachmentCreate body, final ApiCallback<AttachmentRead> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = createAttachmentAttachmentsPostValidateBeforeCall(body, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<AttachmentRead>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
    /**
     * Build call for deleteAttachmentAttachmentsAttachmentIdDelete
     * @param attachmentId  (required)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call deleteAttachmentAttachmentsAttachmentIdDeleteCall(Integer attachmentId, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;
        
        // create path and map variables
        String localVarPath = "/attachments/{attachment_id}"
            .replaceAll("\\{" + "attachment_id" + "\\}", apiClient.escapeString(attachmentId.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] { "OAuth2PasswordBearer" };
        return apiClient.buildCall(localVarPath, "DELETE", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }
    
    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call deleteAttachmentAttachmentsAttachmentIdDeleteValidateBeforeCall(Integer attachmentId, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        // verify the required parameter 'attachmentId' is set
        if (attachmentId == null) {
            throw new ApiException("Missing the required parameter 'attachmentId' when calling deleteAttachmentAttachmentsAttachmentIdDelete(Async)");
        }
        
        com.squareup.okhttp.Call call = deleteAttachmentAttachmentsAttachmentIdDeleteCall(attachmentId, progressListener, progressRequestListener);
        return call;

        
        
        
        
    }

    /**
     * Delete Attachment
     * 
     * @param attachmentId  (required)
     * @return SuccessResponseModel
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public SuccessResponseModel deleteAttachmentAttachmentsAttachmentIdDelete(Integer attachmentId) throws ApiException {
        ApiResponse<SuccessResponseModel> resp = deleteAttachmentAttachmentsAttachmentIdDeleteWithHttpInfo(attachmentId);
        return resp.getData();
    }

    /**
     * Delete Attachment
     * 
     * @param attachmentId  (required)
     * @return ApiResponse&lt;SuccessResponseModel&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<SuccessResponseModel> deleteAttachmentAttachmentsAttachmentIdDeleteWithHttpInfo(Integer attachmentId) throws ApiException {
        com.squareup.okhttp.Call call = deleteAttachmentAttachmentsAttachmentIdDeleteValidateBeforeCall(attachmentId, null, null);
        Type localVarReturnType = new TypeToken<SuccessResponseModel>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * Delete Attachment (asynchronously)
     * 
     * @param attachmentId  (required)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call deleteAttachmentAttachmentsAttachmentIdDeleteAsync(Integer attachmentId, final ApiCallback<SuccessResponseModel> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = deleteAttachmentAttachmentsAttachmentIdDeleteValidateBeforeCall(attachmentId, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<SuccessResponseModel>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
    /**
     * Build call for readAttachmentAttachmentsAttachmentIdGet
     * @param attachmentId  (required)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call readAttachmentAttachmentsAttachmentIdGetCall(Integer attachmentId, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;
        
        // create path and map variables
        String localVarPath = "/attachments/{attachment_id}"
            .replaceAll("\\{" + "attachment_id" + "\\}", apiClient.escapeString(attachmentId.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] {  };
        return apiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }
    
    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call readAttachmentAttachmentsAttachmentIdGetValidateBeforeCall(Integer attachmentId, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        // verify the required parameter 'attachmentId' is set
        if (attachmentId == null) {
            throw new ApiException("Missing the required parameter 'attachmentId' when calling readAttachmentAttachmentsAttachmentIdGet(Async)");
        }
        
        com.squareup.okhttp.Call call = readAttachmentAttachmentsAttachmentIdGetCall(attachmentId, progressListener, progressRequestListener);
        return call;

        
        
        
        
    }

    /**
     * Read Attachment
     * 
     * @param attachmentId  (required)
     * @return AttachmentRead
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public AttachmentRead readAttachmentAttachmentsAttachmentIdGet(Integer attachmentId) throws ApiException {
        ApiResponse<AttachmentRead> resp = readAttachmentAttachmentsAttachmentIdGetWithHttpInfo(attachmentId);
        return resp.getData();
    }

    /**
     * Read Attachment
     * 
     * @param attachmentId  (required)
     * @return ApiResponse&lt;AttachmentRead&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<AttachmentRead> readAttachmentAttachmentsAttachmentIdGetWithHttpInfo(Integer attachmentId) throws ApiException {
        com.squareup.okhttp.Call call = readAttachmentAttachmentsAttachmentIdGetValidateBeforeCall(attachmentId, null, null);
        Type localVarReturnType = new TypeToken<AttachmentRead>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * Read Attachment (asynchronously)
     * 
     * @param attachmentId  (required)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call readAttachmentAttachmentsAttachmentIdGetAsync(Integer attachmentId, final ApiCallback<AttachmentRead> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = readAttachmentAttachmentsAttachmentIdGetValidateBeforeCall(attachmentId, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<AttachmentRead>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
    /**
     * Build call for readAttachmentsAttachmentsGet
     * @param q  (optional)
     * @param offset  (optional, default to 0)
     * @param limit  (optional, default to 100)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call readAttachmentsAttachmentsGetCall(String q, Integer offset, Integer limit, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;
        
        // create path and map variables
        String localVarPath = "/attachments";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        if (q != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("q", q));
        if (offset != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("offset", offset));
        if (limit != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("limit", limit));

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] {  };
        return apiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }
    
    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call readAttachmentsAttachmentsGetValidateBeforeCall(String q, Integer offset, Integer limit, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        
        com.squareup.okhttp.Call call = readAttachmentsAttachmentsGetCall(q, offset, limit, progressListener, progressRequestListener);
        return call;

        
        
        
        
    }

    /**
     * Read Attachments
     * Get all Attachment.
     * @param q  (optional)
     * @param offset  (optional, default to 0)
     * @param limit  (optional, default to 100)
     * @return List&lt;AttachmentRead&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public List<AttachmentRead> readAttachmentsAttachmentsGet(String q, Integer offset, Integer limit) throws ApiException {
        ApiResponse<List<AttachmentRead>> resp = readAttachmentsAttachmentsGetWithHttpInfo(q, offset, limit);
        return resp.getData();
    }

    /**
     * Read Attachments
     * Get all Attachment.
     * @param q  (optional)
     * @param offset  (optional, default to 0)
     * @param limit  (optional, default to 100)
     * @return ApiResponse&lt;List&lt;AttachmentRead&gt;&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<List<AttachmentRead>> readAttachmentsAttachmentsGetWithHttpInfo(String q, Integer offset, Integer limit) throws ApiException {
        com.squareup.okhttp.Call call = readAttachmentsAttachmentsGetValidateBeforeCall(q, offset, limit, null, null);
        Type localVarReturnType = new TypeToken<List<AttachmentRead>>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * Read Attachments (asynchronously)
     * Get all Attachment.
     * @param q  (optional)
     * @param offset  (optional, default to 0)
     * @param limit  (optional, default to 100)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call readAttachmentsAttachmentsGetAsync(String q, Integer offset, Integer limit, final ApiCallback<List<AttachmentRead>> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = readAttachmentsAttachmentsGetValidateBeforeCall(q, offset, limit, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<List<AttachmentRead>>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
    /**
     * Build call for updateAttachmentAttachmentsAttachmentIdPatch
     * @param body  (required)
     * @param attachmentId  (required)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call updateAttachmentAttachmentsAttachmentIdPatchCall(AttachmentUpdate body, Integer attachmentId, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = body;
        
        // create path and map variables
        String localVarPath = "/attachments/{attachment_id}"
            .replaceAll("\\{" + "attachment_id" + "\\}", apiClient.escapeString(attachmentId.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] { "OAuth2PasswordBearer" };
        return apiClient.buildCall(localVarPath, "PATCH", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }
    
    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call updateAttachmentAttachmentsAttachmentIdPatchValidateBeforeCall(AttachmentUpdate body, Integer attachmentId, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        // verify the required parameter 'body' is set
        if (body == null) {
            throw new ApiException("Missing the required parameter 'body' when calling updateAttachmentAttachmentsAttachmentIdPatch(Async)");
        }
        // verify the required parameter 'attachmentId' is set
        if (attachmentId == null) {
            throw new ApiException("Missing the required parameter 'attachmentId' when calling updateAttachmentAttachmentsAttachmentIdPatch(Async)");
        }
        
        com.squareup.okhttp.Call call = updateAttachmentAttachmentsAttachmentIdPatchCall(body, attachmentId, progressListener, progressRequestListener);
        return call;

        
        
        
        
    }

    /**
     * Update Attachment
     * 
     * @param body  (required)
     * @param attachmentId  (required)
     * @return AttachmentRead
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public AttachmentRead updateAttachmentAttachmentsAttachmentIdPatch(AttachmentUpdate body, Integer attachmentId) throws ApiException {
        ApiResponse<AttachmentRead> resp = updateAttachmentAttachmentsAttachmentIdPatchWithHttpInfo(body, attachmentId);
        return resp.getData();
    }

    /**
     * Update Attachment
     * 
     * @param body  (required)
     * @param attachmentId  (required)
     * @return ApiResponse&lt;AttachmentRead&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<AttachmentRead> updateAttachmentAttachmentsAttachmentIdPatchWithHttpInfo(AttachmentUpdate body, Integer attachmentId) throws ApiException {
        com.squareup.okhttp.Call call = updateAttachmentAttachmentsAttachmentIdPatchValidateBeforeCall(body, attachmentId, null, null);
        Type localVarReturnType = new TypeToken<AttachmentRead>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * Update Attachment (asynchronously)
     * 
     * @param body  (required)
     * @param attachmentId  (required)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call updateAttachmentAttachmentsAttachmentIdPatchAsync(AttachmentUpdate body, Integer attachmentId, final ApiCallback<AttachmentRead> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = updateAttachmentAttachmentsAttachmentIdPatchValidateBeforeCall(body, attachmentId, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<AttachmentRead>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
}
