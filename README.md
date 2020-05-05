Static html pages with Webpack 4
================================

## Prerequisites

- [Install `node` (comes with `npm`)](https://nodejs.org/). Suggested version expressed in [.nvmrc](./.nvmrc) file.

## Development

- `npm i` - install dependencies
- `npm start` - start development server
- `npm test` - run minimal tests (eg: lint javascript files)
- `npm run cy:run` - run Cypress functional/browser/e2e tests. Works only when running website locally (`npm start` or `npm run preview`)

### Where are generated files?

In `development` mode `webpack` does not write generated files to disk, in order to change it
switch `devServer.writeToDisk` to `true` in [webpack.dev.js](./webpack.dev.js)

## Production

- `npm run build` to prepare `html`, `css`, `js` files in `dist/` directory
- `npm run preview` - run build and serve production files locally
