import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/recommendation/diet_system/data/models/request/weakly_recommendation_request_model.dart';
import 'package:core_fit/features/recommendation/diet_system/logic/cubit/ai_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const List<String> genders = ['Male', 'Female'];
const List<String> activityLevels = ['Sedentary', 'Lightly Active', 'Active', 'Very Active'];
const List<String> fitnessLevels = ['Beginner', 'Intermediate', 'Advanced'];
const List<String> goals = ['Lose Weight', 'Maintain Weight', 'Gain Muscle'];

class NutritionFormPage extends StatefulWidget {
  @override
  State<NutritionFormPage> createState() => _NutritionFormPageState();
}

class _NutritionFormPageState extends State<NutritionFormPage> {
  final _formKey = GlobalKey<FormState>();

  final weightController = TextEditingController();
  final heightController = TextEditingController();
  final ageController = TextEditingController();
  final exerciseDaysController = TextEditingController();
  final preferredFoodsController = TextEditingController();
  final dislikedFoodsController = TextEditingController();
  final allergiesController = TextEditingController();

  String gender = genders.first;
  String activityLevel = activityLevels.first;
  String fitnessLevel = fitnessLevels.first;
  String goal = goals.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Nutrition And Fitness Plan'),
      body: BlocBuilder<AiCubit, AiState>(
        bloc: getIt<AiCubit>(),
        builder: (context, state) {
          final isLoading = state is GetRecommendationLoading;

          return Stack(
            children: [
              AbsorbPointer(
                absorbing: isLoading,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FormRow(
                          left: _buildTextField(weightController, 'Weight (kg)', TextInputType.number),
                          right: _buildTextField(heightController, 'Height (cm)', TextInputType.number),
                        ),
                        const SizedBox(height: 20),
                        _buildTextField(ageController, 'Age', TextInputType.number),
                        _buildDropdownField('Gender', gender, genders, (val) => setState(() => gender = val!)),
                        _buildDropdownField('Activity Level', activityLevel, activityLevels, (val) => setState(() => activityLevel = val!)),
                        _buildDropdownField('Fitness Level', fitnessLevel, fitnessLevels, (val) => setState(() => fitnessLevel = val!)),
                        _buildDropdownField('Goal', goal, goals, (val) => setState(() => goal = val!)),
                        _buildTextField(exerciseDaysController, 'Number of Exercise Days', TextInputType.number),
                        _buildTextField(preferredFoodsController, 'Preferred Foods (comma-separated)', TextInputType.multiline),
                        _buildTextField(dislikedFoodsController, 'Disliked Foods (comma-separated)', TextInputType.multiline),
                        _buildTextField(allergiesController, 'Food Allergies (comma-separated)', TextInputType.multiline),
                        const SizedBox(height: 30),
                        AppTextButton(
                          text: 'Create Plan',
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              getIt<AiCubit>().getRecommendation(
                                context,
                                NutritionRequestModel(
                                  weight: weightController.text,
                                  height: heightController.text,
                                  age: ageController.text,
                                  gender: gender,
                                  activityLevel: activityLevel,
                                  goal: goal,
                                  fitnessLevel: fitnessLevel,
                                  exerciseDays: exerciseDaysController.text,
                                  preferredFoods: preferredFoodsController.text.split(',').map((e) => e.trim()).toList(),
                                  dislikedFoods: dislikedFoodsController.text.split(',').map((e) => e.trim()).toList(),
                                  allergies: allergiesController.text.split(',').map((e) => e.trim()).toList(),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // ⏳ لودينج فوق كل حاجة
              if (isLoading)
                Container(
                  color: Colors.black.withOpacity(0.3),
                  child: const Center(
                    child: CircularProgressIndicator(color: AppColors.main),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, TextInputType keyboardType) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          AppTextFormField(
            keyboardType: keyboardType,
            hintText: label,
            controller: controller,
            validator: (value) => value == null || value.isEmpty ? 'Please enter $label' : null,
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownField(String label, String value, List<String> items, ValueChanged<String?> onChanged) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: SizedBox(
        width: double.infinity,
        child: DropdownButtonFormField<String>(
          value: value,
          isExpanded: true,
          validator: (val) => val == null ? 'Please select $label' : null,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          icon: const Icon(Icons.arrow_drop_down),
          elevation: 16,
          style: TextStyles.font14Dark700,
          items: items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
          onChanged: onChanged,
          decoration: InputDecoration(
            labelText: label,
            focusColor: AppColors.main,
            focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: AppColors.main)),
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            labelStyle: TextStyles.font14Dark700,
            hintStyle: TextStyles.font14Dark700,
            floatingLabelStyle: TextStyles.font14Dark700,
          ),
        ),
      ),
    );
  }
}

class FormRow extends StatelessWidget {
  final Widget left;
  final Widget right;

  const FormRow({required this.left, required this.right, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: left),
        const SizedBox(width: 20),
        Expanded(child: right),
      ],
    );
  }
}
