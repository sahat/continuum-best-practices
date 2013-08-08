module.exports = (grunt) ->
  grunt.initConfig
    less:
      development:
        options:
          concat: false
        files: [{
          expand: true,        # Enable dynamic expansion.
          cwd: 'app/less',  # Src matches are relative to this path.
          src: ['*.less'],     # Actual pattern(s) to match.
          dest: 'build/css',  # Destination path prefix.
          ext: '.css',         # Dest filepaths will have this extension.
        }
        ]

        
    coffee:
      compile:
        expand: true # builds files dynamically
        cwd: "app/scripts" # source dir for coffee files
        src: "**/*.coffee" # traverse all *.coffee files
        dest: "build/scripts/" # destination for compiled js files
        ext: ".js" # file extension
    watch:
      scripts:
        files: ['app/scripts/**/*.coffee']
        tasks: ['coffee']
        options:
          spawn: false


  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-less"

  grunt.registerTask "default", ["coffee", "less"]
  