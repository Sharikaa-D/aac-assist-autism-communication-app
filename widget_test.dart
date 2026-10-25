import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:aac_assist/main.dart';
import 'package:aac_assist/screens/splash_screen.dart';

void main() {
  testWidgets('App Launches and mounts SplashScreen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        child: MyApp(),
      ),
    );

    // Verify that the SplashScreen is mounted
    expect(find.byType(SplashScreen), findsOneWidget);

    // Verify that the splash screen shows the title "AAC Assist"
    expect(find.text('AAC Assist'), findsOneWidget);

    // Verify that the loading indicator is visible
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
