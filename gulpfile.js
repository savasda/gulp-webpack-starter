'use strict';
const gulp     = require('gulp'),
webpack  = require('webpack'),
gutil    = require('gulp-util'),
notifier = require('node-notifier'),
less           = require('gulp-less'),
concat         = require('gulp-concat'),
cleanCSS       = require('gulp-clean-css'),
rename         = require('gulp-rename'),
del            = require('del'),
cache          = require('gulp-cache'),
autoprefixer   = require('gulp-autoprefixer'),
notify         = require("gulp-notify");

let webpackConfig = require('./webpack.config.js');
let statsLog      = { // для красивых логов в консоли
  colors: true,
  reasons: true
};
let src_path = __dirname + '/src/'

gulp.task('scripts', (done) => {
  // run webpack
  webpack(webpackConfig, onComplete);
  function onComplete(error, stats) {
    if (error) {
      onError(error);
    } else if ( stats.hasErrors() ) { // ошибки в самой сборке, к примеру "не удалось найти модуль по заданному пути"
      onError( stats.toString(statsLog) );
    } else {
      onSuccess( stats.toString(statsLog) );
    }
  }
  function onError(error) {
    let formatedError = new gutil.PluginError('webpack', error);
    notifier.notify({
      title: `Error: ${formatedError.plugin}`,
      message: formatedError.message
    });
    done(formatedError);
  }
  function onSuccess(detailInfo) {
    gutil.log('[webpack]', detailInfo);
    done();
  }
});


gulp.task('less', function() {
	return gulp.src('src/**/main.less')
	.pipe(less().on("error", notify.onError()))
	.pipe(rename({suffix: '.min', prefix : ''}))
	.pipe(autoprefixer({
		overrideBrowserslist: ['last 10 versions']
	}))
	.pipe(cleanCSS()) // Опционально, закомментировать при отладке
	.pipe(gulp.dest('./dist/css'))
});


gulp.task('watch', function() {
	gulp.watch(['./src/less/*.less'], gulp.parallel('less'));
	gulp.watch([src_path + '*.js', src_path +  '*.ts'], gulp.parallel('scripts'));
});

gulp.task('removedist', function() { return del(['/dist'], { force: true }) });


gulp.task('prod', gulp.parallel('removedist', 'less', 'scripts'));
gulp.task('default', gulp.parallel('scripts','less', 'watch'));

