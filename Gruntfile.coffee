module.exports = (grunt) ->
  grunt.initConfig
  
    copy:
      html:
        files: [
          expand: true
          cwd: 'src'
          src: ['**/*.html']  # copy index.html from src to dist
          dest: 'build'
          filter: 'isFile'
        ]
      requirejs:
        files: [
          expand: true
          cwd: 'build/js/vendor/requirejs'
          src: ['require.js']
          dest: 'build/js'
          filter: 'isFile'
        ]

    clean: ['release/js/vendor', 'release/js/views', 'release/build.txt']

    less:
      development:
        options:
          concat: false
        files: [{
          expand: true,        # enable dynamic expansion
          concat: false        # do not concatenate
          cwd: 'src/less',     # src matches are relative to this path
          src: ['*.less'],     # actual pattern(s) to match
          dest: 'build/css',   # destination path prefix
          ext: '.css',         # dest filepaths will have this extension
        }]
        
    coffee:
      compile:
        expand: true           # enable dynamic expansion
        cwd: 'src/coffee'      # source dir for coffee files
        src: '**/*.coffee'     # traverse *.coffee files relative to cwd
        dest: 'build/js'       # destination for compiled js files
        ext: '.js'             # file extension for compiled files
            
    requirejs:
      compile:
        options:
          appDir: 'build'
          name: "main"
          baseUrl: "js"
          dir: "release"
          mainConfigFile: "build/js/main.js"
          optimizeCss: 'standard'
          fileExclusionRegExp: /^test$/

    watch:
      scripts:
        files: ['src/coffee/**/*.coffee']
        tasks: ['coffee']
        options:
          spawn: false
      styles:
        files: ['src/less/**/*.less']
        tasks: ['less']
        options:
          spawn: false

  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-less"
  grunt.loadNpmTasks "grunt-contrib-requirejs"
  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-contrib-clean"

  grunt.registerTask "default", ["coffee", "less", "copy"]
  grunt.registerTask "build", ["coffee", "less", "copy"]
  grunt.registerTask "deploy", ["build", "requirejs", "clean"]
  
  
  
