import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var usbMonitor: USBMonitor
    
    var body: some View {
        VStack(spacing: 20) {
            StatusView(status: usbMonitor.status)
            LogView(logs: usbMonitor.logs)
            if let error = usbMonitor.error {
                ErrorView(message: error)
            }
        }
        .padding()
        .frame(minWidth: 600, minHeight: 400)
    }
}