require('normalize.css/normalize.css')
require('./page.scss')
const img = require('../../img/unicorn.jpg')

document.addEventListener('DOMContentLoaded', () => {
  console.log('DOMContentLoaded', 'page-about')
  console.log('Image through require()', img)
})
