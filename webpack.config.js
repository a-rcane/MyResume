const path = require('path');
module.exports = {
    mode: "production",
    entry: path.resolve(__dirname, 'src') + '/index.js',
    output: {
        /*Webpack producing results*/
        path: path.resolve(__dirname, "../src/dist"),
        filename: "app-bundle.js"
    }
}