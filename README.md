# Simple Messaging App

A basic Flutter messaging app with WhatsApp-like send and receive functionality.

## Features

- ✅ Chat list screen showing all conversations
- ✅ Individual chat screen for sending/receiving messages
- ✅ Message bubbles (sent messages in green, received in gray)
- ✅ Timestamps for each message
- ✅ Auto-scroll to latest message
- ✅ Simulated message replies for testing

## Screenshots

### Chat List Screen
- Shows all your conversations
- Contact avatars with initials
- Last message preview
- Time stamps

### Chat Screen
- Send and receive messages
- WhatsApp-style message bubbles
- Automatic reply simulation (for testing)
- Smooth scrolling to new messages

## Setup Instructions

1. **Install Flutter**
   - Download from: https://flutter.dev/docs/get-started/install
   - Follow the installation guide for your operating system

2. **Check Flutter Installation**
   ```bash
   flutter doctor
   ```

3. **Navigate to the project directory**
   ```bash
   cd messaging_app
   ```

4. **Get dependencies**
   ```bash
   flutter pub get
   ```

5. **Run the app**
   
   For Android:
   ```bash
   flutter run
   ```
   
   For iOS (Mac only):
   ```bash
   flutter run
   ```
   
   For Web:
   ```bash
   flutter run -d chrome
   ```

## How to Use

1. **Chat List**: Launch the app to see a list of sample contacts
2. **Open Chat**: Tap on any contact to open the chat screen
3. **Send Message**: Type your message in the text field at the bottom and tap the send button
4. **Receive Message**: The app will automatically simulate a reply after 2 seconds

## Project Structure

```
messaging_app/
├── lib/
│   └── main.dart          # Main app code
├── pubspec.yaml           # Dependencies
└── README.md             # This file
```

## Customization Ideas

To extend this app, you can:

1. **Add a backend** (Firebase, Supabase, or custom API)
2. **Add user authentication**
3. **Implement real-time messaging** using WebSockets or Firebase
4. **Add image/file sharing**
5. **Add voice messages**
6. **Add user profiles**
7. **Add group chats**
8. **Add message status** (sent, delivered, read)
9. **Add notifications**

## Code Overview

### Main Components:

1. **MessagingApp** - Root widget with app theme
2. **ChatListScreen** - Displays list of all chats
3. **ChatScreen** - Individual chat interface
4. **Message Model** - Data structure for messages
5. **Contact Model** - Data structure for contacts

### Key Features in Code:

- **Message Bubbles**: Different colors for sent/received messages
- **Auto-scroll**: Automatically scrolls to newest message
- **Simulated Replies**: For testing without backend
- **Time Formatting**: Shows message timestamps

## Next Steps

To make this a real messaging app:

1. Set up a backend service (Firebase Firestore recommended for beginners)
2. Add user authentication
3. Replace simulated replies with real data from backend
4. Add real-time listeners for incoming messages

## Dependencies

- Flutter SDK
- Material Design Components (built-in)

No external packages required for basic functionality!

## License

Free to use and modify for learning purposes.
