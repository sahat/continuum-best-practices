module.exports = (grunt) ->
  grunt.initConfig
    coffee:
      compile:
        expand: true # builds files dynamically
        cwd: "src" # source dir for coffee files
        src: "**/*.coffee" # traverse all *.coffee files
        dest: "build" # destination for compiled js files
        ext: ".js" # file extension

  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-watch"

  grunt.registerTask "default", ["coffee"]