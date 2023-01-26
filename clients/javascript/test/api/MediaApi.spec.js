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
(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', '../../src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.JbsBackendService);
  }
}(this, function(expect, JbsBackendService) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new JbsBackendService.MediaApi();
  });

  describe('(package)', function() {
    describe('MediaApi', function() {
      describe('createUploadUploadPost', function() {
        it('should call createUploadUploadPost successfully', function(done) {
          // TODO: uncomment, update parameter values for createUploadUploadPost call and complete the assertions
          /*
          var opts = {};

          instance.createUploadUploadPost(file, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(JbsBackendService.GenericFileUploadResponse);

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('deleteMediaMediasMediaIdDelete', function() {
        it('should call deleteMediaMediasMediaIdDelete successfully', function(done) {
          // TODO: uncomment, update parameter values for deleteMediaMediasMediaIdDelete call and complete the assertions
          /*

          instance.deleteMediaMediasMediaIdDelete(mediaId, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(JbsBackendService.SuccessResponseModel);

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('readMediaMediasMediaIdGet', function() {
        it('should call readMediaMediasMediaIdGet successfully', function(done) {
          // TODO: uncomment, update parameter values for readMediaMediasMediaIdGet call and complete the assertions
          /*

          instance.readMediaMediasMediaIdGet(mediaId, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(JbsBackendService.MediaRead);

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('readMediasMediasGet', function() {
        it('should call readMediasMediasGet successfully', function(done) {
          // TODO: uncomment, update parameter values for readMediasMediasGet call and complete the assertions
          /*
          var opts = {};

          instance.readMediasMediasGet(opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            let dataCtr = data;
            expect(dataCtr).to.be.an(Array);
            expect(dataCtr).to.not.be.empty();
            for (let p in dataCtr) {
              let data = dataCtr[p];
              expect(data).to.be.a(JbsBackendService.MediaRead);
            }

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('updateMediaMediasMediaIdPatch', function() {
        it('should call updateMediaMediasMediaIdPatch successfully', function(done) {
          // TODO: uncomment, update parameter values for updateMediaMediasMediaIdPatch call and complete the assertions
          /*

          instance.updateMediaMediasMediaIdPatch(body, mediaId, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(JbsBackendService.MediaRead);

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
    });
  });

}));