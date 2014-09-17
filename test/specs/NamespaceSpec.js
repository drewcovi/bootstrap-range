describe("Namespace Tests", function() {
  beforeEach(function() {
    runs(function() {
      $.fn.rangepicker = function() {};
    });
  });

  it("sets the plugin namespace to be 'bootstrapRangepicker' if $.fn.rangepicker is already defined", function() {
    var scriptLoaded;

    runs(function() {
      $.getScript("js/bootstrap-rangepicker.js", function() {
        scriptLoaded = true;
      });
    });

    waitsFor(function() {
      return scriptLoaded === true;
    });

    runs(function() {
      expect($.fn.bootstrapRangepicker).toBeDefined();
    });
  });

  afterEach(function() {
    /*
      Set the namespaces back to undefined and reload rangepicker
      So that namespace is returned to $.fn.rangepicker
    */
    var scriptLoaded;

    runs(function() {
      $.fn.bootstrapSlider = undefined;
      $.fn.rangepicker = undefined;

      $.getScript("js/bootstrap-rangepicker.js", function() {
        scriptLoaded = true;
      });
    });

    waitsFor(function() {
      return scriptLoaded === true;
    });
  });
});