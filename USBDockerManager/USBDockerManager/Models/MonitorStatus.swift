import SwiftUI

enum MonitorStatus {
    case monitoring
    case processing
    case error
    
    var description: String {
        switch self {
        case .monitoring: return "Monitoring for USB devices..."
        case .processing: return "Processing files..."
        case .error: return "Error occurred"
        }
    }
    
    var iconName: String {
        switch self {
        case .monitoring: return "antenna.radiowaves.left.and.right"
        case .processing: return "gearshape.2"
        case .error: return "exclamationmark.triangle"
        }
    }
    
    var color: Color {
        switch self {
        case .monitoring: return .blue
        case .processing: return .orange
        case .error: return .red
        }
    }
}