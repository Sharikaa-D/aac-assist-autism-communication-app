# aac_assist

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# AAC Assist – Communication App for Autistic Children

## About the Project

AAC Assist is a Flutter-based Augmentative and Alternative Communication (AAC) application designed to support autistic children who may experience difficulties with verbal communication.

The application aims to make communication easier through visual communication cards, simple interactions, and text-to-speech functionality. It is designed to provide a user-friendly experience for children and their guardians.

## Problem Statement

Some autistic children experience challenges expressing their needs, emotions, preferences, and daily activities through spoken language. AAC Assist aims to provide an alternative communication method using visual elements and audio output.

## Objectives

- Support communication through image-based cards.
- Convert selected text into speech.
- Provide a simple and child-friendly interface.
- Support guardian and child user roles.
- Explore offline access to communication resources.
- Provide a foundation for future accessibility improvements.

## Key Features

- **Visual Communication Cards:** Represent common needs and activities through images and labels.
- **Text-to-Speech:** Read selected communication text aloud using a text-to-speech feature.
- **Child-Friendly Interface:** Use a simple layout and a soft visual theme.
- **Guardian and Child Roles:** Support separate experiences for guardians and children, according to the implemented functionality.
- **Firebase Integration:** Firebase Authentication and Cloud Firestore are intended for authentication and data management where configured.
- **Offline Support:** Local storage is intended to support access to selected information when offline, depending on the implemented functionality.

Note: Features must be verified against the current source code before being described as fully implemented.

## Technologies Used

- Flutter
- Dart
- Firebase Authentication
- Cloud Firestore
- flutter_tts
- Riverpod
- Hive
- Material Design 3

## Application Workflow

1. The user opens the AAC Assist application.
2. The user selects an available communication card.
3. The selected text is displayed or processed according to the application workflow.
4. Text-to-speech reads the associated text aloud when supported and enabled.
5. Additional guardian, storage, and authentication features operate according to the application's configuration.

## Project Structure

```text
aac-assist-autism-communication-app/
├── android/
├── ios/
├── lib/
│   ├── main.dart
│   ├── models/
│   ├── providers/
│   ├── repositories/
│   ├── services/
│   └── widgets/
├── test/
├── web/
├── pubspec.yaml
├── pubspec.lock
├── analysis_options.yaml
├── .gitignore
└── README.md
```

The exact folders and files may differ depending on the current implementation.

## Getting Started

### Prerequisites

Install the following tools:

- Flutter SDK
- Dart SDK (included with Flutter)
- Visual Studio Code or another compatible IDE
- Google Chrome for Flutter Web testing

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/YOUR-GITHUB-USERNAME/aac-assist-autism-communication-app.git
   ```

2. Navigate to the project directory:

   ```bash
   cd aac-assist-autism-communication-app
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Check your Flutter environment:

   ```bash
   flutter doctor
   ```

5. Run the application locally:

   ```bash
   flutter run -d chrome
   ```

### Build for the Web

Generate the web release files:

```bash
flutter build web
```

The generated website files are placed in:

```text
build/web/
```

These files can be deployed to a compatible static web hosting service after checking the application configuration.

## Firebase Configuration

If Firebase services are enabled, configure the application using your own Firebase project and the appropriate FlutterFire configuration.

Do not commit private credentials, service-account keys, passwords, or other sensitive information to a public repository.

Review Firebase Authentication and Cloud Firestore configuration before deploying the application.

## Deployment

The Flutter Web build can be deployed to a hosting provider such as Netlify.

After running:

```bash
flutter build web
```

Upload the generated `build/web` folder to the appropriate hosting service.

The public demo URL should be added here only after the deployment has been verified.

**Live Demo:** To be added after successful deployment.

## Accessibility Considerations

AAC Assist is intended to support communication through visual and audio interactions.

Future improvements may include:

- More customizable communication cards
- Additional languages and speech options
- Larger icons and text
- Improved accessibility settings
- Expanded offline functionality
- More guardian customization options

These improvements are planned possibilities and should not be considered implemented features unless verified in the source code.

## Future Enhancements

- Custom communication-card creation
- Additional categories for daily communication
- Enhanced personalization
- Expanded offline data support
- Additional accessibility options
- Improved testing and deployment workflows


## Disclaimer

AAC Assist is a communication-support project. It is not a diagnostic or medical treatment tool. Its effectiveness depends on the implementation and the needs of individual users.
