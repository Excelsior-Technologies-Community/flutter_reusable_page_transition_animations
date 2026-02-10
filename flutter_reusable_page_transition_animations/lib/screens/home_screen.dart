import 'package:flutter/material.dart';
import 'package:flutter_reusable_page_transition_animations/routes/page_transitions.dart';
import 'detail_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition.createRoute(
                    const DetailScreen(),
                    type: PageTransitionType.flipX,
                  ),
                );
              },
              child: const Text('Go to Detail (Slide Left)'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition.createRoute(
                    const SettingsScreen(),
                    type: PageTransitionType.flipY,
                  ),
                );
              },
              child: const Text('Go to Settings (Fade)'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition.createRoute(
                    const DetailScreen(),
                    type: PageTransitionType.scale,
                  ),
                );
              },
              child: const Text('Go to Detail (Scale)'),
            ),
          ],
        ),
      ),
    );
  }
}
