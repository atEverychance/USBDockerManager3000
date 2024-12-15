import SwiftUI

@main
struct USBDockerManagerApp: App {
    @StateObject private var usbMonitor = USBMonitor()
    @StateObject private var settings = AppSettings()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(usbMonitor)
                .environmentObject(settings)
        }
        
        Settings {
            SettingsView(settings: settings)
        }
        
        MenuBarExtra("USB Docker Manager", systemImage: "externaldrive") {
            Button("Settings...") {
                NSApp.sendAction(Selector(("showSettingsWindow:")), to: nil, from: nil)
            }
            .keyboardShortcut(",", modifiers: .command)
            
            Divider()
            
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }
            .keyboardShortcut("q", modifiers: .command)
        }
    }
}