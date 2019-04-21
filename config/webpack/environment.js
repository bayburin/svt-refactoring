const { environment } = require('@rails/webpacker')
const typescript =  require('./loaders/typescript')

environment.loaders.append('html', {
  test: /\.html$/,
  exclude: /node_modules/,
  use: [{
    loader: 'html-loader'
  }]
})

// environment.loaders.append('woff', {
//   test: /\.woff(2)?(\?v=[0-9]\.[0-9]\.[0-9])?$/,
//   loader: 'url-loader?limit=10000&mimetype=application/font-woff'
// })

// environment.loaders.append('ttf', {
//   test: /\.(ttf|eot|svg)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
//   loader: 'file-loader'
// })

environment.loaders.prepend('typescript', typescript)
module.exports = environment
