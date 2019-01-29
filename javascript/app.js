const APP_ID = 'r7WOBCoFgBlpuRoBTIWjb7XI-gzGzoHsz';
const APP_KEY = 'PT4FpSvABfO0wKCD4WYA0wdK';
const AV = require('leancloud-storage');

AV.init({
    appId: APP_ID,
    appKey: APP_KEY
});

const testObject = AV.Object.createWithoutData('TestObject', '5c45436a7565716f24d459ae');
testObject.fetch().then(() => {
    const nonexist = testObject.get('nonexist');
    const empty = testObject.get('empty');
    console.log(`nonexist: ${nonexist}\nempty: ${empty}`);

    testObject.set('hello', null);
    testObject.set('new_js', null);
    testObject.save();
})