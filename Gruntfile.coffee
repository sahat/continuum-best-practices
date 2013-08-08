module.exports = (grunt) ->
  grunt.initConfig
  
    copy:
      main:
        files:[
          { expand: true,  cwd: 'app/scripts',  src: ['**/*.js'], dest: 'build', filter: 'isFile'}, # includes files in path
          { expand: true,  cwd: 'app/css',  src: ['**/*.css'], dest: 'build', filter: 'isFile'}, # includes files in path
          ]

    less:
      development:
        options:
          concat: false
        files: [{
          expand: true,        # Enable dynamic expansion.
          concat: false
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
            
  # appDir: "build",
  # baseUrl: "scripts",
  # dir: "dist",
  # name: 'main',
  # mainConfigFile: '../scripts/main.js',
  # optimizeCss: 'standard'

    requirejs:
      compile:
        options:
          appDir: "build"
          name: "main"
          baseUrl: "scripts"
          dir: "dist"
          mainConfigFile: "build/scripts/main.js"
          optimizeCss: 'standard'
          fileExclusionRegExp: /^tests$/
    
    watch:
      scripts:
        files: ['app/scripts/**/*.coffee']
        tasks: ['coffee']
        options:
          spawn: false


  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-less"
  grunt.loadNpmTasks "grunt-contrib-requirejs"
  grunt.loadNpmTasks "grunt-contrib-copy"

  grunt.registerTask "default", ["coffee", "less"]
  