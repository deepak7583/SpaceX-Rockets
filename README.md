# 🚀 SpaceX Rocket Explorer

## 📌 Overview
SpaceX Rocket Explorer is a Flutter application that provides detailed information about SpaceX rockets.
The app fetches real-time rocket data from an API and displays essential details such as
rocket name, country of origin, number of engines, cost per launch, success rate, and images.

## 🎯 Features
✅ Fetches and displays a list of SpaceX rockets  
✅ Shows detailed information about each rocket  
✅ Displays rocket images in a horizontal image slider  
✅ Provides a Wikipedia link for more information  
✅ Uses Flutter Riverpod for state management  
✅ Follows a clean and modular architecture  

## 📂 Project Structure
```
lib/
├── core/
│   ├── api/  # API client, Retrofit setup
│   │   ├── api_service.dart
│   │   ├── api_constants.dart
│   │   ├── dio_client.dart
│   │
│   ├── database/  # Local caching (Sqflite)
│   │   ├── database_helper.dart
│
├── models/  # Data models
│   ├── rocket_model.dart
│
├── repository/  # Data source abstraction (API + LocalDB)
│   ├── rocket_repository.dart
│
├── providers/  # Riverpod state management
│   ├── rocket_provider.dart
│
├── ui/  
│   ├── screens/  
│   │   ├── home_screen.dart  # Rocket list screen
│   │   ├── details_screen.dart  # Rocket details screen
│   │
│   ├── widgets/  # Reusable widgets
│   │   ├── rocket_card.dart
│  
└── main.dart  # App entry point
```

## 📲 Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/deepak7583/SpaceX-Rockets.git
   ```
2. Navigate to the project directory:
   ```sh
   cd spacex-rocket-explorer
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the app:
   ```sh
   flutter run
   ```

## 🛠️ Technologies Used
- Flutter
- Dart
- Riverpod (State Management)
- Retrofit (API Handling)
- Sqflite (Local Database)
- Dio (Networking)


