
gulp = require 'gulp'
mocha = require 'gulp-mocha'

gulp.task 'test', ->
  gulp.src('test/**/*_test.coffee', {read: false})
      .pipe(mocha());
