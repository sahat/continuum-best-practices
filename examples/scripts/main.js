require.config({
  paths: {
    "jquery": "vendor/jquery/jquery",
    "underscore": "vendor/underscore-amd/underscore",
    "backbone": "vendor/backbone-amd/backbone",
    "cs": "vendor/require-cs/cs",
    "coffee-script": "vendor/coffee-script/extras/coffee-script"
  }
});

require(['cs!views/app'], function(AppView) {
  new AppView;
});