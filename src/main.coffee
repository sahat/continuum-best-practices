require.config paths:
  jquery: "../libs/jquery/jquery"
  underscore: "../libs/underscore-amd/underscore"
  backbone: "../libs/backbone-amd/backbone"

require ["views/app"], (AppView) ->
  new AppView
