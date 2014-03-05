module.exports = (grunt) ->
  grunt.initConfig
    coffee:
      compile:
        files: [
          expand: true
          cwd: ''
          src: '**/*.coffee'
          dest: ''
          ext: '.js'
        ]
    coffeelint:
      app: '*.coffee'
    watch:
      files: ['Gruntfile.coffee', '*.coffee']
      tasks: ['coffeelint', 'coffee']

  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['watch']