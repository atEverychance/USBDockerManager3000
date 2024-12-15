import SwiftUI

struct StatusView: View {
    let status: MonitorStatus
    
    var body: some View {
        HStack {
            Image(systemName: status.iconName)
                .foregroundColor(status.color)
            Text(status.description)
                .font(.headline)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(8)
    }
}