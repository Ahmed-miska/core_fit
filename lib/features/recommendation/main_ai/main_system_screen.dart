import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MainSystemScreen extends StatelessWidget {
  const MainSystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Main AI System'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _HomeOption(
              icon: Icons.assignment_turned_in_outlined,
              title: 'View Saved\nDiet',
              onTap: () {
                context.pushNamed(Routes.planScreen);
              },
            ),
            _HomeOption(
              icon: Icons.add_box_outlined,
              title: 'Create New\nDiet',
              onTap: () {
                context.pushNamed(Routes.dietSystemScreen);
              },
            ),
            _HomeOption(
              icon: Icons.chat_bubble_outline,
              title: 'Chat with\nChatbot',
              onTap: () {
                context.pushNamed(Routes.chatBotScreen);
              },
            ),
            _HomeOption(
              icon: Icons.face_retouching_natural,
              title: 'Player Face\nRecognition',
              onTap: () {
                context.pushNamed(Routes.playerInfo);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _HomeOption({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF7F7F7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 40, color: Colors.black87),
              const SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
