const AV = require('leanengine')
const fs = require('fs')
const path = require('path')

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
  return 'Hello world!'
})

AV.Cloud.beforeUpdate('AComment', function(request) {
  if (request.object.updatedKeys.indexOf('likes') != -1) {
    if (request.object.get('likes') < 0) {
      throw new AV.Cloud.Error('likes 不能是负数');
    }
  } else {
    throw new AV.Cloud.Error(`likes 未修改，修改的字段是 ${request.object.updatedKeys[0]}`);
  }
});


const Promise = require('bluebird');
const mysql = require('mysql');

/*
 * An example of connecting to LeanDB MySQL.
 *
 * Install dependencies:
 * 
 *     npm install --save bluebird mysql
 */

const mysqlPool = Promise.promisifyAll(mysql.createPool({
  host: process.env['MYSQL_HOST_MYRDB'],
  port: process.env['MYSQL_PORT_MYRDB'],
  user: process.env['MYSQL_ADMIN_USER_MYRDB'],
  password: process.env['MYSQL_ADMIN_PASSWORD_MYRDB'],
  database: 'test',
  connectionLimit: 10
}));

AV.Cloud.define('connectMysql', async request => {
    rows = await mysqlPool.queryAsync('SELECT 1 + 1 AS solution');
    return { solution: rows[0].solution };
});
