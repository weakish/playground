import * as AV from 'leancloud-storage'

const APP_ID: string = '3AJTBW5QyGw17hLxNN3njGHW-gzGzoHsz';
const APP_KEY: string = 'P8cKdEvRxusfuR27MuhvFOzr';


AV.init({
    appId: APP_ID,
    appKey: APP_KEY
});

class Todo extends AV.Object {}
AV.Object.register(Todo);

let todo = AV.Object.createWithoutData<Todo>(Todo, "5cbdd7aea3180b7832e07f44")

