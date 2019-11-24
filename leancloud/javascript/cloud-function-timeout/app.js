'use strict';

var express = require('express');
var timeout = require('connect-timeout');
var path = require('path');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var AV = require('leanengine');

// 加载云函数定义，你可以将云函数拆分到多个文件方便管理，但需要在主文件中加载它们
require('./cloud');

var app = express();

// 设置模板引擎
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(express.static('public'));

// 设置默认超时时间
app.use(timeout('15s'));

// 加载云引擎中间件
app.use(AV.express());

app.enable('trust proxy');
// 需要重定向到 HTTPS 可去除下一行的注释。
// app.use(AV.Cloud.HttpsRedirect());

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());

app.get('/', function(req, res) {
  res.render('index', { currentTime: new Date() });
});

app.get('/inspect', function(req, res) {
  AV.debug.enable();
  AV.Cloud.run('inspectUser', {}, { sessionToken: "lqudyku2wu98x3lqlway1j7s7" }).then(function(result) {
    res.send(result);
  }, function(error) {
    res.send(error);
  });
});

app.get('/inspect-user', function(req, res) {
  const params =
  { name: '小鸟哔哔',
    description: '一只鸟在树上唱RAP，猜一个字',
    content:
     { text:
        'for tiger.将迷你杯中的精品咖啡粉，倒入冰水或牛奶，瞬间还原一杯真正好喝的冷萃、拿铁咖啡！保留发咖啡风味细节的同时，口感干净，在香气、新鲜度、甜感和细节层次上，都更接近现磨咖啡。',
       images: [Array] },
    status: 1,
    avatar:
     'https://c.static-nike.com/a/images/f_auto/w_1536,c_limit/tlropqgrikjp64id98zd/nikecom-homepage-cn-620.jpg',
    stickiedAt: '2019-07-09T09:25:50.759Z',
    activityId: '',
    userId: '' }
  AV.debug.enable();
  AV.User.become('lqudyku2wu98x3lqlway1j7s7').then(function(thisUser) {
    AV.Cloud.run('inspectUser', params, { user: thisUser }).then(function(result) {
      res.send(result);
    }, function(error) {
      res.send(error);
    });
  });
});

// 可以将一类的路由单独保存在一个文件中
app.use('/todos', require('./routes/todos'));

app.use(function(req, res, next) {
  // 如果任何一个路由都没有返回响应，则抛出一个 404 异常给后续的异常处理器
  if (!res.headersSent) {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
  }
});

// error handlers
app.use(function(err, req, res, next) {
  if (req.timedout && req.headers.upgrade === 'websocket') {
    // 忽略 websocket 的超时
    return;
  }

  var statusCode = err.status || 500;
  if (statusCode === 500) {
    console.error(err.stack || err);
  }
  if (req.timedout) {
    console.error('请求超时: url=%s, timeout=%d, 请确认方法执行耗时很长，或没有正确的 response 回调。', req.originalUrl, err.timeout);
  }
  res.status(statusCode);
  // 默认不输出异常详情
  var error = {};
  if (app.get('env') === 'development') {
    // 如果是开发环境，则将异常堆栈输出到页面，方便开发调试
    error = err;
  }
  res.render('error', {
    message: err.message,
    error: error
  });
});

module.exports = app;
