import Foundation

class ProcessManager {
    func run(_ process: Process) async throws -> Bool {
        let pipe = Pipe()
        process.standardOutput = pipe
        process.standardError = pipe
        
        try process.run()
        process.waitUntilExit()
        
        return process.terminationStatus == 0
    }
}