# YouTube Video Downloader

A Flutter-based application designed to download YouTube videos. This cross-platform app supports Android, iOS, web, and desktop. It features an intuitive UI for searching and downloading videos directly from YouTube, utilizing the `youtube_explode` package for efficient video extraction and download.

## Features

- Download videos from YouTube.
- Cross-platform support (Android, iOS, web, desktop).

## Project Structure

```plaintext
youtube-video-downloader/
├── android/                  # Android-specific files
├── assets/                   # Asset files (images, etc.)
│   └── images/
├── ios/                      # iOS-specific files
├── lib/                      # Main source code
│   ├── main.dart             # Entry point of the application
│   ├── pages/                # Various pages of the application
│   │   ├── home_page.dart    # Home page of the app
│   │   ├── download_page.dart# Download page of the app
│   ├── services/             # Services for API calls, etc.
│   │   ├── youtube_service.dart # Service for YouTube API interaction
│   ├── utils/                # Utility functions and helpers
│   │   ├── constants.dart    # App-wide constants
│   ├── widgets/              # Reusable widgets
│       ├── video_card.dart   # Widget to display video information
│       ├── download_button.dart # Widget for the download button
├── linux/                    # Linux-specific files
├── macos/                    # macOS-specific files
├── test/                     # Unit tests
│   └── widget_test.dart      # Widget tests
├── web/                      # Web-specific files
├── windows/                  # Windows-specific files
├── .gitignore                # Git ignore file
├── .metadata                 # Metadata for the project
├── analysis_options.yaml     # Analysis options for linting
├── pubspec.lock              # Lock file for dependencies
├── pubspec.yaml              # Project dependencies and settings
└── README.md                 # Project readme (this file)
```

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/adarshpandey18/youtube-video-downloader.git
    cd youtube-video-downloader
    ```

2. Install dependencies:
    ```bash
    flutter pub get
    ```

3. Run the application:
    ```bash
    flutter run
    ```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.


## Contact

- Author: Adarsh Pandey
- Email: [Adarsh Pandey](itsadarshvijaypandey@gmail.com)
- GitHub: [adarshpandey18](https://github.com/adarshpandey18)
