import 'package:flutter/material.dart';
import 'package:core_fit/core/helpers/shared_pref_helper.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/recommendation/diet_system/data/models/response/weakly_recommendation_response_model.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({Key? key}) : super(key: key);

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  WeaklyRecommendationResponseModel? plan;
  bool isLoading = true;
  final primaryColor = const Color(0xFF0BAB59);

  @override
  void initState() {
    super.initState();
    _loadSavedPlan();
  }

  Future<void> _loadSavedPlan() async {
    final savedPlan = SharedPrefHelper().getDietPlan();
    setState(() {
      plan = savedPlan;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (plan == null) {
      return const Scaffold(
        appBar: CustomAppBar(title: 'Nutrition & Workout Plan'),
        body: Center(child: Text("No plan found")),
      );
    }

    return _buildPlanUI();
  }

  Widget _buildPlanUI() {
    return Scaffold(
      appBar: CustomAppBar(title: 'Nutrition & Workout Plan'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildInfoCard(),
            const SizedBox(height: 16),
            ..._buildDailyCards(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard() {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("🔢 Summary", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: primaryColor)),
            const SizedBox(height: 10),
            _infoRow("BMR", "${plan!.bmr?.toStringAsFixed(0)}"),
            _infoRow("TDEE", "${plan!.tdee?.toStringAsFixed(0)}"),
            _infoRow("Daily Calories", "${plan!.dailyCalories?.toStringAsFixed(0)}"),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(child: Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
          Text(value, style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 16)),
        ],
      ),
    );
  }

  List<Widget> _buildDailyCards() {
    final meals = plan!.mealPlan!;
    final exercises = plan!.exercisePlan!;
    final totalDays = meals.length < exercises.length ? meals.length : exercises.length;

    return List.generate(totalDays, (index) {
      final dayMeals = meals[index];
      final dayExercises = exercises[index].take(4).toList(); // أول 4 تمارين فقط

      return Card(
        margin: const EdgeInsets.only(bottom: 16),
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          title: Text(
            'Day ${index + 1}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: primaryColor,
              fontSize: 18,
            ),
          ),
          childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          children: [
            sectionTitle('🍽️ Meals'),
            _buildMealSection('Breakfast', dayMeals.breakfast),
            _buildMealSection('Lunch', dayMeals.lunch),
            _buildMealSection('Dinner', dayMeals.dinner),
            _buildMealSection('Snack', dayMeals.snack),
            const Divider(height: 24),
            sectionTitle('🏋️ Exercises'),
            ...dayExercises.map((ex) => ListTile(
                  leading: Icon(Icons.fitness_center, color: primaryColor),
                  title: Text(
                    ex.name ?? '',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  subtitle: Text(
                    "${ex.bodyPart} | Sets: ${ex.sets} | Reps: ${ex.reps}",
                    style: const TextStyle(fontSize: 14),
                  ),
                )),
          ],
        ),
      );
    });
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: primaryColor),
        ),
      ),
    );
  }

  Widget _buildMealSection(String title, List<Breakfast>? meals) {
    if (meals == null || meals.isEmpty) return const SizedBox();

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• $title',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17, color: Colors.black87),
          ),
          const SizedBox(height: 8),
          ...meals.map((meal) => Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(meal.food ?? '', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: primaryColor)),
                      const SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildNutrientText("Calories", "${meal.calories?.toStringAsFixed(0)}"),
                          _buildNutrientText("Protein", "${meal.protein?.toStringAsFixed(1)}g"),
                          _buildNutrientText("Carbs", "${meal.carbs?.toStringAsFixed(1)}g"),
                          _buildNutrientText("Fat", "${meal.fat?.toStringAsFixed(1)}g"),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildNutrientText(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        Text(value, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
      ],
    );
  }
}
