import 'dart:io';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart' show ImagePicker, ImageSource;

class PickImageInSignup extends StatefulWidget {
  const PickImageInSignup({
    super.key,
  });

  @override
  State<PickImageInSignup> createState() => _PickImageInSignupState();
}

class _PickImageInSignupState extends State<PickImageInSignup> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.main,
      ),
      padding: const EdgeInsets.all(6),
      child: SizedBox(
        height: 150.h,
        width: 150.h,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
              imageFile != null ? Image.file(imageFile!, fit: BoxFit.fill) : Align(alignment: Alignment.center, child: Text('Add Image', style: TextStyles.font16White700)),
              Positioned(
                bottom: 5,
                right: 5,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: pickImage,
                  icon: Icon(Icons.camera_alt, color: AppColors.white, size: 32),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> pickImageFromGallery() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(
        () {
          imageFile = File(pickedFile.path);
        },
      );
      context.read<SignupCubit>().image = File(pickedFile.path);

      context.pop();
    }
  }

  Future<void> pickImageFromCamera() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
      context.pop();
      context.read<SignupCubit>().image = File(pickedFile.path);
    }
  }

  void pickImage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Pick Image From'),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: pickImageFromGallery, child: const Text('Gallery')),
              TextButton(onPressed: pickImageFromCamera, child: const Text('Camera')),
            ],
          ),
        );
      },
    );
  }
}
