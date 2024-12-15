import Foundation

class AppSettings: ObservableObject {
    @Published var dockerImage: String {
        didSet {
            if validateDockerImage(dockerImage) {
                UserDefaults.standard.set(dockerImage, forKey: "dockerImage")
            } else {
                // Revert to previous valid value if validation fails
                dockerImage = oldValue
            }
        }
    }
    
    init() {
        self.dockerImage = UserDefaults.standard.string(forKey: "dockerImage") ?? ""
    }
    
    private func validateDockerImage(_ image: String) -> Bool {
        // Basic Docker image name validation
        let pattern = "^[a-z0-9]+(?:[._-][a-z0-9]+)*(?:/[a-z0-9]+(?:[._-][a-z0-9]+)*)*(?::[a-z0-9._-]+)?$"
        let regex = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive)
        return regex?.firstMatch(in: image, range: NSRange(image.startIndex..., in: image)) != nil
    }
}