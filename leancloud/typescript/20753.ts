import * as AV from 'leanengine'

AV.init({appId: "3AJTBW5QyGw17hLxNN3njGHW-gzGzoHsz", appKey: "P8cKdEvRxusfuR27MuhvFOzr", masterKey: "test"})

AV.Cloud.beforeSave("Post", async req => {
    let objectId = req.object.id
    if (objectId === undefined) {
        throw new AV.Cloud.Error("invalid request")
    } else {
        let selection = await AV.Object.createWithoutData("CCL_Exp_Seciton", objectId).fetch()
        console.log(selection)
    }
})