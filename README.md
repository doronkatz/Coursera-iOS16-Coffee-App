# MyCoffeeApp - iOS Coffee Shop Application

## Overview
MyCoffeeApp is a modern iOS application built with SwiftUI and Firebase, designed to provide a seamless coffee ordering experience. This app demonstrates the implementation of a full-featured coffee shop ordering system with user authentication, real-time menu updates, and order processing.

## Features
- 🏠 Home View: Browse coffee menu with detailed drink information
- 🛒 Shopping Basket: Add and manage drink orders
- 👤 User Account Management: User authentication and profile management
- 🔥 Firebase Integration: Real-time data synchronization and storage
- 💳 Order Processing: Complete order flow with validation

## Technical Stack
- Swift and SwiftUI for UI development
- Firebase for backend services
- MVVM (Model-View-ViewModel) architecture
- iOS 16+ compatibility

## Project Structure
```
├── Domain/
│   ├── AccountViewModel
│   ├── BasketViewModel
│   └── HomeViewModel
├── Model/
│   ├── AppError
│   ├── Basket
│   ├── Drink
│   ├── Order
│   └── User
├── Network/
│   ├── FCollectionReference
│   └── FirebaseRepository
├── Presentation/
│   ├── AccountView
│   ├── BasketView
│   ├── HomeView
│   ├── DrinkDetailView
│   └── ViewComponents/
└── Utilities/
    ├── SecureStorage
    └── UserRepository
```

## Key Components
- **AppTabView**: Main navigation container
- **BasketViewModel**: Manages shopping cart state and operations
- **FirebaseRepository**: Handles all Firebase interactions
- **UserRepository**: Manages user authentication and data

## Getting Started
1. Clone the repository
2. Install dependencies using Swift Package Manager
3. Configure Firebase credentials
4. Build and run the project in Xcode

## Requirements
- iOS 16.0 or later
- Xcode 14.0 or later
- Firebase account and configuration
- Swift 5.7 or later

## License
This project is part of a Coursera learning module for iOS development using SwiftUI and Firebase.

## Acknowledgments
- Created as part of the iOS 16 Coffee Shop App Development Course
- Uses Firebase for backend services
- Implements modern iOS development practices
