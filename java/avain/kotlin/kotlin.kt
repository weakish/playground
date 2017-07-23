import java.lang.Runtime


fun main(args: Array<String>) {
    Runtime.getRuntime().exec(arrayOf("touch", "hi-kotlin-cmd-array.txt"))
    val re = Regex("[0-9]+")
    val is_matched = re.containsMatchIn("3-way")
    print(is_matched)
    createTempFile()
}


