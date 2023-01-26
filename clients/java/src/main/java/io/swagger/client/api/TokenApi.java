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


import io.swagger.client.model.ErrorResponseModel;
import io.swagger.client.model.HTTPValidationError;
import io.swagger.client.model.Token;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TokenApi {
    private ApiClient apiClient;

    public TokenApi() {
        this(Configuration.getDefaultApiClient());
    }

    public TokenApi(ApiClient apiClient) {
        this.apiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return apiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.apiClient = apiClient;
    }

    /**
     * Build call for createTokenTokenPost
     * @param grantType  (required)
     * @param username  (required)
     * @param password  (required)
     * @param scope  (required)
     * @param clientId  (required)
     * @param clientSecret  (required)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call createTokenTokenPostCall(String grantType, String username, String password, String scope, String clientId, String clientSecret, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;
        
        // create path and map variables
        String localVarPath = "/token";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();
        if (grantType != null)
        localVarFormParams.put("grant_type", grantType);
        if (username != null)
        localVarFormParams.put("username", username);
        if (password != null)
        localVarFormParams.put("password", password);
        if (scope != null)
        localVarFormParams.put("scope", scope);
        if (clientId != null)
        localVarFormParams.put("client_id", clientId);
        if (clientSecret != null)
        localVarFormParams.put("client_secret", clientSecret);

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/x-www-form-urlencoded"
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
        return apiClient.buildCall(localVarPath, "POST", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }
    
    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call createTokenTokenPostValidateBeforeCall(String grantType, String username, String password, String scope, String clientId, String clientSecret, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        // verify the required parameter 'grantType' is set
        if (grantType == null) {
            throw new ApiException("Missing the required parameter 'grantType' when calling createTokenTokenPost(Async)");
        }
        // verify the required parameter 'username' is set
        if (username == null) {
            throw new ApiException("Missing the required parameter 'username' when calling createTokenTokenPost(Async)");
        }
        // verify the required parameter 'password' is set
        if (password == null) {
            throw new ApiException("Missing the required parameter 'password' when calling createTokenTokenPost(Async)");
        }
        // verify the required parameter 'scope' is set
        if (scope == null) {
            throw new ApiException("Missing the required parameter 'scope' when calling createTokenTokenPost(Async)");
        }
        // verify the required parameter 'clientId' is set
        if (clientId == null) {
            throw new ApiException("Missing the required parameter 'clientId' when calling createTokenTokenPost(Async)");
        }
        // verify the required parameter 'clientSecret' is set
        if (clientSecret == null) {
            throw new ApiException("Missing the required parameter 'clientSecret' when calling createTokenTokenPost(Async)");
        }
        
        com.squareup.okhttp.Call call = createTokenTokenPostCall(grantType, username, password, scope, clientId, clientSecret, progressListener, progressRequestListener);
        return call;

        
        
        
        
    }

    /**
     * Create Token
     * 
     * @param grantType  (required)
     * @param username  (required)
     * @param password  (required)
     * @param scope  (required)
     * @param clientId  (required)
     * @param clientSecret  (required)
     * @return Token
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public Token createTokenTokenPost(String grantType, String username, String password, String scope, String clientId, String clientSecret) throws ApiException {
        ApiResponse<Token> resp = createTokenTokenPostWithHttpInfo(grantType, username, password, scope, clientId, clientSecret);
        return resp.getData();
    }

    /**
     * Create Token
     * 
     * @param grantType  (required)
     * @param username  (required)
     * @param password  (required)
     * @param scope  (required)
     * @param clientId  (required)
     * @param clientSecret  (required)
     * @return ApiResponse&lt;Token&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<Token> createTokenTokenPostWithHttpInfo(String grantType, String username, String password, String scope, String clientId, String clientSecret) throws ApiException {
        com.squareup.okhttp.Call call = createTokenTokenPostValidateBeforeCall(grantType, username, password, scope, clientId, clientSecret, null, null);
        Type localVarReturnType = new TypeToken<Token>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * Create Token (asynchronously)
     * 
     * @param grantType  (required)
     * @param username  (required)
     * @param password  (required)
     * @param scope  (required)
     * @param clientId  (required)
     * @param clientSecret  (required)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call createTokenTokenPostAsync(String grantType, String username, String password, String scope, String clientId, String clientSecret, final ApiCallback<Token> callback) throws ApiException {

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

        com.squareup.okhttp.Call call = createTokenTokenPostValidateBeforeCall(grantType, username, password, scope, clientId, clientSecret, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<Token>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
}