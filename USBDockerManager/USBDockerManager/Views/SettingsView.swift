import SwiftUI

struct SettingsView: View {
    @ObservedObject var settings: AppSettings
    @State private var showingImagePicker = false
    @State private var tempImage: String = ""
    
    var body: some View {
        Form {
            Section(header: Text("Docker Configuration")) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Active Docker Image")
                        .font(.headline)
                    
                    HStack {
                        TextField("Enter Docker image name", text: $tempImage)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 300)
                        
                        Button("Set") {
                            settings.dockerImage = tempImage
                        }
                        .disabled(tempImage.isEmpty)
                    }
                    
                    if settings.dockerImage.isEmpty {
                        Text("No Docker image configured")
                            .foregroundColor(.red)
                    } else {
                        Text("Current image: \(settings.dockerImage)")
                            .foregroundColor(.green)
                    }
                    
                    Text("Note: Only one Docker image can be active at a time")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .padding(.top, 5)
                }
            }
            .padding()
        }
        .frame(width: 450, height: 200)
        .onAppear {
            tempImage = settings.dockerImage
        }
    }
}