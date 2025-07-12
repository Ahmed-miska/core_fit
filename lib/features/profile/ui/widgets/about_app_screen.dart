import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  final String title;
  final String message;
  final Color primaryColor;

  const InfoScreen({
    Key? key,
    required this.title,
    required this.message,
    this.primaryColor = const Color(0xFF0BAB59), // default app primary color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Text(
            message,
            style: const TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Colors.black87,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ),
    );
  }
}
