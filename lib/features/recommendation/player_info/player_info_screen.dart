import 'dart:io';
import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/recommendation/diet_system/data/models/response/player_info_response_model.dart';
import 'package:core_fit/features/recommendation/diet_system/logic/cubit/ai_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class PlayerImageScreen extends StatefulWidget {
  const PlayerImageScreen({super.key});

  @override
  State<PlayerImageScreen> createState() => _PlayerImageScreenState();
}

class _PlayerImageScreenState extends State<PlayerImageScreen> {
  File? _imageFile;
  final primaryColor = const Color(0xFF0BAB59);
  bool hasRequested = false;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);

    if (picked != null) {
      setState(() {
        _imageFile = File(picked.path);
        hasRequested = true;
      });

      getIt<AiCubit>().processPlayerImage(_imageFile!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Player Info Detection'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildImagePreview(),
            const SizedBox(height: 16),
            _buildUploadButton(),
            const SizedBox(height: 24),
            BlocBuilder<AiCubit, AiState>(
              buildWhen: (previous, current) => current is GetPlayerInfoLoading || current is GetPlayerInfoSuccess || current is GetPlayerInfoError,
              bloc: getIt<AiCubit>(),
              builder: (context, state) {
                if (!hasRequested) return const SizedBox.shrink();

                if (state is GetPlayerInfoLoading) {
                  return const CircularProgressIndicator();
                } else if (state is GetPlayerInfoSuccess) {
                  return _buildPlayerInfoCard(state.model);
                } else if (state is GetPlayerInfoError) {
                  return Text(state.message, style: const TextStyle(color: Colors.red));
                }

                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImagePreview() {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade400),
        color: Colors.grey[100],
      ),
      child: _imageFile != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.file(_imageFile!, fit: BoxFit.cover),
            )
          : const Center(child: Text("No image selected", style: TextStyle(fontSize: 16))),
    );
  }

  Widget _buildUploadButton() {
    return ElevatedButton.icon(
      onPressed: _pickImage,
      icon: const Icon(Icons.upload_file, size: 24, color: Colors.white),
      label: const Text("Upload Player Image", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildPlayerInfoCard(PlayerResponseModel model) {
    return Card(
      color: const Color(0xFFF7F6FA),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          model.playerInfo ?? "No player info available.",
          style: const TextStyle(fontSize: 16, height: 1.6),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
