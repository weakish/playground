"use strict";
const APP_ID = 'r7WOBCoFgBlpuRoBTIWjb7XI-gzGzoHsz';
const APP_KEY = 'PT4FpSvABfO0wKCD4WYA0wdK';
const AV = require('leancloud-storage');
AV.init({
    appId: APP_ID,
    appKey: APP_KEY
});
const testObject = AV.Object.createWithoutData('TestObject', '5c45436a7565716f24d459ae');
testObject.fetch().then(() => {
    testObject.set("keyjs", true);
    testObject.set("anotherKey", "another");
    try {
        testObject.set(Symbol("symbol"), "hello");
    }
    catch (err) {
        console.error(err);
    }
    testObject.save().then(() => { console.log("o.k."); }, (err) => { console.error(err); });
    console.log(`symbol(local): ${testObject.get(Symbol("symbol"))}`); // undefined
    testObject.fetch().then((obj) => { console.log(`symbol(synced): ${obj.get(Symbol("symbol"))}`); }, // undefined
    (err) => { console.error(err); });
});
