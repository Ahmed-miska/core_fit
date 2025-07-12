class NutritionRequestModel {
  final String weight;
  final String height;
  final String age;
  final String gender;
  final String activityLevel;
  final String goal;
  final String fitnessLevel;
  final String exerciseDays;
  final List<String> preferredFoods;
  final List<String> dislikedFoods;
  final List<String> allergies;

  NutritionRequestModel({
    required this.weight,
    required this.height,
    required this.age,
    required this.gender,
    required this.activityLevel,
    required this.goal,
    required this.fitnessLevel,
    required this.exerciseDays,
    required this.preferredFoods,
    required this.dislikedFoods,
    required this.allergies,
  });

  Map<String, dynamic> toJson() {
    return {
      'weight': weight,
      'height': height,
      'age': age,
      'gender': gender,
      'activity_level': activityLevel,
      'goal': goal,
      'fitness_level': fitnessLevel,
      'exercise_days': exerciseDays,
      'preferred_foods': preferredFoods,
      'disliked_foods': dislikedFoods,
      'allergies': allergies,
    };
  }
}
 