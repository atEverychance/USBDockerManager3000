import Foundation

struct USBValidator {
    func validateDrive(at url: URL) async throws -> Bool {
        let inputURL = url.appendingPathComponent("input")
        let outputURL = url.appendingPathComponent("output")
        
        guard try await validateFolder(at: inputURL),
              try await validateFolder(at: outputURL),
              try await checkWritePermission(at: outputURL) else {
            return false
        }
        
        return true
    }
    
    private func validateFolder(at url: URL) async throws -> Bool {
        var isDirectory: ObjCBool = false
        guard FileManager.default.fileExists(atPath: url.path, isDirectory: &isDirectory),
              isDirectory.boolValue else {
            return false
        }
        return true
    }
    
    private func checkWritePermission(at url: URL) async throws -> Bool {
        let testFile = url.appendingPathComponent(".write-test")
        do {
            try "test".write(to: testFile, atomically: true, encoding: .utf8)
            try FileManager.default.removeItem(at: testFile)
            return true
        } catch {
            return false
        }
    }
}