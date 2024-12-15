# USBDockerManager3000 - Developer Documentation

```
██    ██ ███████ ██████  ██████  ███    ███ 
██    ██ ██      ██   ██ ██   ██ ████  ████ 
██    ██ ███████ ██████  ██   ██ ██ ████ ██ 
██    ██      ██ ██   ██ ██   ██ ██  ██  ██ 
 ██████  ███████ ██████  ██████  ██      ██ 

███    ███  █████  ███    ██  █████   ██████  ███████ ██████  
████  ████ ██   ██ ████   ██ ██   ██ ██       ██      ██   ██ 
██ ████ ██ ███████ ██ ██  ██ ███████ ██   ███ █████   ██████  
██  ██  ██ ██   ██ ██  ██ ██ ██   ██ ██    ██ ██      ██   ██ 
██      ██ ██   ██ ██   ████ ██   ██  ██████  ███████ ██   ██ 

██████╗  ██████╗  ██████╗  ██████╗
╚════██╗██╔═══██╗██╔═══██╗██╔═══██╗
 █████╔╝██║   ██║██║   ██║██║   ██║
██╔═══╝ ██║   ██║██║   ██║██║   ██║
███████╗╚██████╔╝╚██████╔╝╚██████╔╝
╚══════╝ ╚═════╝  ╚═════╝  ╚═════╝
```

## Architecture Overview

Native macOS application built with SwiftUI for automated Docker container execution triggered by USB device events.

## Key Features

- USB device monitoring and auto-detection
- Automatic validation of USB drive folder structure
- Seamless Docker container execution
- Real-time process status monitoring
- System tray integration
- Error handling and user notifications

## Requirements

- macOS 11.0 or later
- Docker Desktop for Mac
- Xcode 13.0 or later
- Swift 5.5 or later

## Project Structure

```
USBDockerManager/
├── App/
│   └── USBDockerManagerApp.swift
├── Models/
│   ├── AppSettings.swift
│   ├── LogEntry.swift
│   └── MonitorStatus.swift
├── Services/
│   ├── DockerService.swift
│   ├── USBMonitor.swift
│   └── USBValidator.swift
├── Utilities/
│   └── ProcessManager.swift
└── Views/
    ├── Components/
    │   ├── LogView.swift
    │   └── StatusView.swift
    ├── ContentView.swift
    └── SettingsView.swift
```

## Setup Instructions

1. Clone the repository
2. Open the project in Xcode
3. Build and run the application

## Usage

1. Launch the application
2. Insert a USB drive with the following structure:
   ```
   USB_DRIVE/
   ├── input/
   └── output/
   ```
3. The application will automatically:
   - Detect the USB drive
   - Validate the folder structure
   - Execute the configured Docker container
   - Process files from input to output
   - Notify on completion

## Configuration

Configure Docker settings through the application preferences:
- Docker image selection
- Volume mapping preferences
- Notification settings

## Development Guidelines

- Follow SwiftUI best practices
- Maintain MVVM architecture
- Write unit tests for critical components
- Document public interfaces
- Handle errors gracefully

## License

MIT License
