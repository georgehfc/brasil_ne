const {
  environment
} = require('@rails/webpacker')

// Added soo app's JS understands jquery and popper.js syntax
// https://www.mashrurhossain.com/blog/rails6bootstrap4
const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))

module.exports = environment
