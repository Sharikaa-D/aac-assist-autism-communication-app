import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'theme/app_theme.dart';
import 'providers/auth_provider.dart';
import 'providers/settings_provider.dart';
import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Try initializing Firebase (handles mock fallback silently if credentials are dummy/offline)
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    print("Firebase initialization skipped or failed: $e. Operating in mock mode.");
  }

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final settings = ref.watch(settingsProvider);

    // Dynamic Theme Selection based on User Profile Role and Settings
    ThemeData activeTheme = AppTheme.guardianTheme; // Default theme for splash/auth

    authState.whenData((user) {
      if (user != null) {
        if (user.role == 'guardian') {
          activeTheme = AppTheme.guardianTheme;
        } else {
          // If Child role, check high contrast accessibility flag
          activeTheme = settings.isHighContrast
              ? AppTheme.highContrastTheme
              : AppTheme.childTheme;
        }
      }
    });

    return MaterialApp(
      title: 'AAC Assist App',
      debugShowCheckedModeBanner: false,
      theme: activeTheme,
      home: const SplashScreen(),
    );
  }
}
