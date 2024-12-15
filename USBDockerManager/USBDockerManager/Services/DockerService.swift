import Foundation

class DockerService {
    private let processManager = ProcessManager()
    private let settings: AppSettings
    
    init(settings: AppSettings) {
        self.settings = settings
    }
    
    func runContainer(input: URL, output: URL) async throws -> Bool {
        let process = Process()
        process.executableURL = URL(fileURLWithPath: "/usr/local/bin/docker")
        
        process.arguments = [
            "run",
            "--rm",
            "-v", "\(input.path):/input:ro",
            "-v", "\(output.path):/output:rw",
            settings.dockerImage
        ]
        
        return try await processManager.run(process)
    }
}