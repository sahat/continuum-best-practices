define ["backbone", "jquery"], (Backbone) ->
  App = Backbone.View.extend
    initialize: ->
      $("body").append("Hello from Continuum Analytics!")

