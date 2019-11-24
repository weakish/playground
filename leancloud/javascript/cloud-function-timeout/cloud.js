const AV = require('leanengine')
const fs = require('fs')
const path = require('path')
const crypto = require('crypto');

/**
 * 加载 functions 目录下所有的云函数
 */
fs.readdirSync(path.join(__dirname, 'functions')).forEach( file => {
  require(path.join(__dirname, 'functions', file))
})

/**
 * 一个简单的云代码方法
 */
AV.Cloud.define('hello', function(request) {
  const hello = 'Hello world!'
  let hash = hello.repeat(5000000)
  for (step = 0; step < 5000000; step++) {
    hash = crypto.createHash('sha512').update(hash).digest('hex')
  }
  return [hash, step]
})

AV.Cloud.define('timeout', function(request) {
  return new Promise(() => {})
})

AV.Cloud.beforeSave('BeforeSave', function(request) {
  console.log('beforeSave triggered')
  return new Promise(() => {})
})

AV.Cloud.afterSave('AfterSave', function(request) {
  console.log('afterSave triggered')
  return new Promise(() => {})
})

AV.Cloud.define('inspectUser', function(request) {
  console.log(request)
  return request.currentUser;
})