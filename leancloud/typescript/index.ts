import * as AV from 'leancloud-storage'

AV.init({
    appId: process.env.LEANCLOUD_APP_ID || 'B09iIN0UKf2qQIjqKz5WiRnv-gzGzoHsz', // hjiang/react-hook-demo
    appKey: process.env.LEANCLOUD_APP_KEY || 'Xes23aMR9VUqzpmEvch8YV4A'
})

async function main() {
    const TestObject = AV.Object.extend('TestObject')
    const testObject = new TestObject()
    testObject.set('words', 'Hello world!')
    const savedObject = await testObject.save()
    console.log(savedObject.id)
}

main()