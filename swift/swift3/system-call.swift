import Foundation

// To avoid shell injection.
func escapeShellCommand(shellCommand: [String]) -> String {
    let escapedShellCommand =
        shellCommand
            .map({"'" + $0.stringByReplacingOccurrencesOfString("'", withString: "'\\''")  + "'"})
            .reduce(" ", combine: {$0 + " " + $1})
    return escapedShellCommand
}


func shell(shellCommand: [String]) -> Int32 {
    let task = NSTask()
    task.launchPath = "/bin/sh"
    let escapedShellCommand = escapeShellCommand(shellCommand: shellCommand)
    task.arguments = ["-c", escapedShellCommand]
    task.launch()
    task.waitUntilExit()
    return task.terminationStatus
}

print(escapeShellCommand(shellCommand: ["ls", "-l"]))
shell(shellCommand: ["ls", "-l"])
