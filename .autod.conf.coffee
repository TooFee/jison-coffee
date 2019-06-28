export default
  write: true
  registry: 'https://registry.npm.taobao.org'
  prefix: '~'
  devprefix: '^'
  plugin: ''
  test: []
  dep: [
  ]
  devdep: [
    'jison'

    'autod'
    'ddeyes'

    'rimraf'

    'cfx.require-plugin-coffee'
    'cfx.rollup-plugin-coffee2'

    'del'
    'gulp'
    'gulp-better-rollup'
    'gulp-rename'
    'rollup-plugin-cleanup'
  ]
  keep: []
  ignore: []
  exclude: [
    './packages'
    './node_modules'
    './.autod.conf.js'
  ]
