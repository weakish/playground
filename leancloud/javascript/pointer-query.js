var APP_ID = 'jYDw5C3mQvCJ0Us6yOVT8De8-gzGzoHsz';
var APP_KEY = 'fwj014f87mhTGAqQxOfNkcU6';
var AV = require('leancloud-storage');

AV.init({
  appId: APP_ID,
  appKey: APP_KEY
});

const user = AV.Object.createWithoutData('_User', '5c7e0ea1fe88c200653f85e0')
var query = new AV.Query('posts')
query = query.equalTo('author', user)
