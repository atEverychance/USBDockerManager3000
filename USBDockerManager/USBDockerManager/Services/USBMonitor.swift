import Foundation
import IOKit
import IOKit.usb

class USBMonitor: ObservableObject {
    @Published private(set) var status: MonitorStatus = .monitoring
    @Published private(set) var logs: [LogEntry] = []
    @Published private(set) var error: String?
    
    private let dockerService: DockerService
    private let validator: USBValidator
    private var notificationPort: IONotificationPortRef?
    
    init(settings: AppSettings = AppSettings()) {
        self.dockerService = DockerService(settings: settings)
        self.validator = USBValidator()
        setupUSBMonitoring()
    }
    
    // ... rest of the file remains unchanged ...
}