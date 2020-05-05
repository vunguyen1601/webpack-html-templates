import { Bar } from '../../common/js/bar.es6'
const { Foo } = require('../../common/js/foo.cjs')
require('normalize.css/normalize.css')
require('./page.scss')

document.addEventListener('DOMContentLoaded', () => {
  console.log('DOMContentLoaded', 'page-index')
})

window.Foo = Foo.instance()
window.Bar = Bar()

console.log(window.Foo.getValue())
console.log(window.Bar)
