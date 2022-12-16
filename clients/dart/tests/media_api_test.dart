import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for MediaApi
void main() {
  var instance = new MediaApi();

  group('tests for MediaApi', () {
    // Create Upload
    //
    // Upload a file to the server.   This file later can be served to user either publicly or privately(for signed-in users only)   Hints: Private files can be used for creating new issue attachments (PDFs)!   <span style:\"color:red\">WARN</span> : Uploading files with same filename might overwrite the existing files.
    //
    //Future<GenericFileUploadResponse> createUploadUploadPost(String file, { bool public }) async
    test('test createUploadUploadPost', () async {
      // TODO
    });

    // Delete Media
    //
    //Future<SuccessResponseModel> deleteMediaMediasMediaIdDelete(int mediaId) async
    test('test deleteMediaMediasMediaIdDelete', () async {
      // TODO
    });

    // Read Media
    //
    //Future<MediaRead> readMediaMediasMediaIdGet(int mediaId) async
    test('test readMediaMediasMediaIdGet', () async {
      // TODO
    });

    // Read Medias
    //
    // Get all Media.
    //
    //Future<List<MediaRead>> readMediasMediasGet({ String q, int offset, int limit }) async
    test('test readMediasMediasGet', () async {
      // TODO
    });

    // Update Media
    //
    //Future<MediaRead> updateMediaMediasMediaIdPatch(MediaUpdate body, int mediaId) async
    test('test updateMediaMediasMediaIdPatch', () async {
      // TODO
    });

  });
}
