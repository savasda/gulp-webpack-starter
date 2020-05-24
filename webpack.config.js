'use strict';
const webpack  = require('webpack');
const path = require('path');
const MinifyPlugin = require("babel-minify-webpack-plugin");
const TerserPlugin = require('terser-webpack-plugin');
 

module.exports = {
  mode: 'development',
  watch: true,
  watchOptions: {
    ignored: /node_modules/
  },
  entry: {
    main: `${__dirname}/src/index.js`,
    vendor: `${__dirname}/webroot/WEB-INF/_ui-src/responsive/lib/common/index.js`
  },
  devtool: 'source-map', // Generate separate source map files
  optimization: {
    minimize: false,
    minimizer: [new TerserPlugin()],
    removeAvailableModules: false,
    removeEmptyChunks: true,
    splitChunks: false,
  },
  module: {
    rules: [
      {
        test: /\.(js|ts)$/,
        exclude: /node_modules/,
        loader: 'babel-loader'
      },
    ]
  },
  plugins: [
    new MinifyPlugin(),
  ],
  resolve: {
    extensions: ['.js', '.ts']
  },
  target: 'web',
  output: {
    filename: '[name].bundle.js',
    path: path.resolve(__dirname, 'dist')
  }
};
