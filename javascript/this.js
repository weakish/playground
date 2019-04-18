var o = {
    f() {
        console.log('f')
        console.log("f: " + this.chatRoom)
    },
    g() {
        console.log('g')
        var inner = () => {
            console.log("inner")
            this.chatRoom = "hi"
            console.log("inner: " + this.chatRoom)
        }
        inner()
        console.log("g: " + this.chatRoom)
    }
}


o.f()
o.g()