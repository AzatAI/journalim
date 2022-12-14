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
    instance = new JbsBackendService.SiteApi();
  });

  describe('(package)', function() {
    describe('SiteApi', function() {
      describe('createSiteLanguageSiteLanguagesPost', function() {
        it('should call createSiteLanguageSiteLanguagesPost successfully', function(done) {
          // TODO: uncomment, update parameter values for createSiteLanguageSiteLanguagesPost call and complete the assertions
          /*

          instance.createSiteLanguageSiteLanguagesPost(body, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(JbsBackendService.SiteLanguageRead);

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('createSiteSitesPost', function() {
        it('should call createSiteSitesPost successfully', function(done) {
          // TODO: uncomment, update parameter values for createSiteSitesPost call and complete the assertions
          /*

          instance.createSiteSitesPost(body, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(JbsBackendService.SiteRead);

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete', function() {
        it('should call deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete successfully', function(done) {
          // TODO: uncomment, update parameter values for deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete call and complete the assertions
          /*

          instance.deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete(siteLanguageId, function(error, data, response) {
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
      describe('deleteSiteSitesSiteIdDelete', function() {
        it('should call deleteSiteSitesSiteIdDelete successfully', function(done) {
          // TODO: uncomment, update parameter values for deleteSiteSitesSiteIdDelete call and complete the assertions
          /*

          instance.deleteSiteSitesSiteIdDelete(siteId, function(error, data, response) {
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
      describe('readSiteLanguageSiteLanguagesSiteLanguageIdGet', function() {
        it('should call readSiteLanguageSiteLanguagesSiteLanguageIdGet successfully', function(done) {
          // TODO: uncomment, update parameter values for readSiteLanguageSiteLanguagesSiteLanguageIdGet call and complete the assertions
          /*

          instance.readSiteLanguageSiteLanguagesSiteLanguageIdGet(siteLanguageId, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(JbsBackendService.SiteLanguageRead);

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('readSiteLanguagesSiteLanguagesGet', function() {
        it('should call readSiteLanguagesSiteLanguagesGet successfully', function(done) {
          // TODO: uncomment, update parameter values for readSiteLanguagesSiteLanguagesGet call and complete the assertions
          /*
          var opts = {};

          instance.readSiteLanguagesSiteLanguagesGet(opts, function(error, data, response) {
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
              expect(data).to.be.a(JbsBackendService.SiteLanguageRead);
            }

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('readSiteSitesSiteIdGet', function() {
        it('should call readSiteSitesSiteIdGet successfully', function(done) {
          // TODO: uncomment, update parameter values for readSiteSitesSiteIdGet call and complete the assertions
          /*

          instance.readSiteSitesSiteIdGet(siteId, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(JbsBackendService.SiteRead);

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('readSitesSitesGet', function() {
        it('should call readSitesSitesGet successfully', function(done) {
          // TODO: uncomment, update parameter values for readSitesSitesGet call and complete the assertions
          /*
          var opts = {};

          instance.readSitesSitesGet(opts, function(error, data, response) {
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
              expect(data).to.be.a(JbsBackendService.SiteRead);
            }

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('updateSiteLanguageSiteLanguagesSiteLanguageIdPatch', function() {
        it('should call updateSiteLanguageSiteLanguagesSiteLanguageIdPatch successfully', function(done) {
          // TODO: uncomment, update parameter values for updateSiteLanguageSiteLanguagesSiteLanguageIdPatch call and complete the assertions
          /*

          instance.updateSiteLanguageSiteLanguagesSiteLanguageIdPatch(body, siteLanguageId, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(JbsBackendService.SiteLanguageRead);

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('updateSiteSitesSiteIdPatch', function() {
        it('should call updateSiteSitesSiteIdPatch successfully', function(done) {
          // TODO: uncomment, update parameter values for updateSiteSitesSiteIdPatch call and complete the assertions
          /*

          instance.updateSiteSitesSiteIdPatch(body, siteId, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(JbsBackendService.SiteRead);

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
