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

package io.swagger.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.client.model.ValidationError;
import io.swagger.v3.oas.annotations.media.Schema;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/**
 * HTTPValidationError
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2022-12-16T10:25:26.213Z[GMT]")
public class HTTPValidationError {
  @SerializedName("detail")
  private List<ValidationError> detail = null;

  public HTTPValidationError detail(List<ValidationError> detail) {
    this.detail = detail;
    return this;
  }

  public HTTPValidationError addDetailItem(ValidationError detailItem) {
    if (this.detail == null) {
      this.detail = new ArrayList<ValidationError>();
    }
    this.detail.add(detailItem);
    return this;
  }

   /**
   * Get detail
   * @return detail
  **/
  @Schema(description = "")
  public List<ValidationError> getDetail() {
    return detail;
  }

  public void setDetail(List<ValidationError> detail) {
    this.detail = detail;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HTTPValidationError htTPValidationError = (HTTPValidationError) o;
    return Objects.equals(this.detail, htTPValidationError.detail);
  }

  @Override
  public int hashCode() {
    return Objects.hash(detail);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HTTPValidationError {\n");
    
    sb.append("    detail: ").append(toIndentedString(detail)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}
