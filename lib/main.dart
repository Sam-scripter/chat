import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat1/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat1/screens/welcome_screen.dart';
import 'package:flash_chat1/screens/login_screen.dart';
import 'package:flash_chat1/screens/registration_screen.dart';
import 'package:flash_chat1/screens/chat_screen.dart';

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions
            .currentPlatform); // Initialize Firebase with default options
    runApp(const FlashChat());
    print('Firebase initialization successful');
  } catch (e) {
    print(e);
    print('did not work');
    // runApp(const FlashChat());
  }
}

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => WelcomeScreen(),
      '/registration': (context) => const RegistrationScreen(),
      '/login': (context) => LoginScreen(),
      '/chat': (context) => const ChatScreen(),
    });
  }
}
