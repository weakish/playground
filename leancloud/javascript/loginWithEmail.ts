import * as AV from 'leancloud-storage'

const APP_ID: string = '3AJTBW5QyGw17hLxNN3njGHW-gzGzoHsz';
const APP_KEY: string = 'P8cKdEvRxusfuR27MuhvFOzr';


AV.init({
    appId: APP_ID,
    appKey: APP_KEY
});

AV.User.loginWithEmail("test@example.com", "pass").then(
    (user) => { console.log(user.get('username')); },
    (error) => { console.log(error); }
);
