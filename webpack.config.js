'use strict';
const webpack  = require('webpack');
const path = require('path');
const MinifyPlugin = require("babel-minify-webpack-plugin");
const TerserPlugin = require('terser-webpack-plugin');
 

module.exports = {
  mode: 'development',
  watchOptions: {
    ignored: /node_modules/
  },
  entry: {
    main: './src/index.js',
    vendor: './src/vendors/index.js'
  },
  devtool: 'source-map', // Generate separate source map files
  optimization: {
    minimize: true,
    minimizer: [new TerserPlugin()],
    removeAvailableModules: false,
    removeEmptyChunks: false,
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
  output: {
    filename: '[name].bundle.js',
    path: path.resolve(__dirname, 'dist')
  }
};
