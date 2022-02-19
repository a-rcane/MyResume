const path = require('path');
module.exports = {
    mode: "production",
    entry: './app/javascript/channels/index.js',
    output: {
        /*Webpack producing results*/
        path: path.resolve(__dirname, "../src/dist"),
        filename: "app-bundle.js"
    },
    module: {
      rules: [
        {
          test: /\.js$/,
          exclude: /node_modules/,
          use: {
            loader: "babel-loader"
          }
        }
      ]
    }
}