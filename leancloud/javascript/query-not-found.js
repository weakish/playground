var AV = require('leancloud-storage');

var APP_ID = '3AJTBW5QyGw17hLxNN3njGHW-gzGzoHsz';
var APP_KEY = 'P8cKdEvRxusfuR27MuhvFOzr';

AV.init({
  appId: APP_ID,
  appKey: APP_KEY
});

async function test_query() {
    var query = new AV.Query('Post');
    query.equalTo('title', 'Smith');
    var students = await query.find();
    console.log(students)
}

test_query()