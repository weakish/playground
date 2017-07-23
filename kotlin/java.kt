import java.util.HashMap
import java.nio.ByteBuffer;
import java.nio.file.Files;
import java.nio.file.FileStore;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.UserDefinedFileAttributeView;

fun main(args: Array<String>) {
    val hashMap = HashMap<String,Int>()
    hashMap.put("one", 1)
    val one: Int? = hashMap.get("one")
    println(one)

    val file: Path = Paths.get(args.first()).toAbsolutePath()
    println(file)
    val store: FileStore = Files.getFileStore(file)
    val supported: Boolean = store.supportsFileAttributeView("user")
    println(supported)
    val userView = Files.getFileAttributeView(file, UserDefinedFileAttributeView::class.java)
    println(UserDefinedFileAttributeView::class.java)
    val tag = "shatag.sha256"
    var readBuffer: ByteBuffer = ByteBuffer.allocate(userView.size(tag))
    userView.read(tag, readBuffer)
    readBuffer.flip()
    val sha256: String? = String(readBuffer.array())
    print(sha256)
}
