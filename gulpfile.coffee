
gulp = require 'gulp'
mocha = require 'gulp-mocha'

gulp.task 'test', ->
  gulp.src('test/main.coffee', {read: false})
      .pipe(mocha());
