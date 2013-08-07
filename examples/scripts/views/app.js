define(['backbone'], function(Backbone) {
  var App = Backbone.View.extend({
    initialize: function() {
      console.log('hello from continuum');
    }
  });

  return App;
});