
class WeaklyRecommendationResponseModel {
  num? bmr;
  num? tdee;
  num? dailyCalories;
  List<MealPlan>? mealPlan;
  List<List<ExercisePlan>>? exercisePlan;

  WeaklyRecommendationResponseModel({
    this.bmr,
    this.tdee,
    this.dailyCalories,
    this.mealPlan,
    this.exercisePlan,
  });

  factory WeaklyRecommendationResponseModel.fromJson(Map<String, dynamic> json) => WeaklyRecommendationResponseModel(
        bmr: json["bmr"],
        tdee: json["tdee"],
        dailyCalories: json["daily_calories"],
        mealPlan: json["meal_plan"] == null ? [] : List<MealPlan>.from(json["meal_plan"]!.map((x) => MealPlan.fromJson(x))),
        exercisePlan: json["exercise_plan"] == null ? [] : List<List<ExercisePlan>>.from(json["exercise_plan"]!.map((x) => List<ExercisePlan>.from(x.map((x) => ExercisePlan.fromJson(x))))),
      );

  Map<String, dynamic> toJson() => {
        "bmr": bmr,
        "tdee": tdee,
        "daily_calories": dailyCalories,
        "meal_plan": mealPlan == null ? [] : List<dynamic>.from(mealPlan!.map((x) => x.toJson())),
        "exercise_plan": exercisePlan == null ? [] : List<dynamic>.from(exercisePlan!.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))),
      };
}

class ExercisePlan {
  String? name;
  String? bodyPart;
  int? sets;
  String? reps;

  ExercisePlan({
    this.name,
    this.bodyPart,
    this.sets,
    this.reps,
  });

  factory ExercisePlan.fromJson(Map<String, dynamic> json) => ExercisePlan(
        name: json["name"],
        bodyPart: json["bodyPart"],
        sets: json["sets"],
        reps: json["reps"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "bodyPart": bodyPart,
        "sets": sets,
        "reps": reps,
      };
}

class MealPlan {
  List<Breakfast>? breakfast;
  List<Breakfast>? lunch;
  List<Breakfast>? dinner;
  List<Breakfast>? snack;

  MealPlan({
    this.breakfast,
    this.lunch,
    this.dinner,
    this.snack,
  });

  factory MealPlan.fromJson(Map<String, dynamic> json) => MealPlan(
        breakfast: json["breakfast"] == null ? [] : List<Breakfast>.from(json["breakfast"]!.map((x) => Breakfast.fromJson(x))),
        lunch: json["lunch"] == null ? [] : List<Breakfast>.from(json["lunch"]!.map((x) => Breakfast.fromJson(x))),
        dinner: json["dinner"] == null ? [] : List<Breakfast>.from(json["dinner"]!.map((x) => Breakfast.fromJson(x))),
        snack: json["snack"] == null ? [] : List<Breakfast>.from(json["snack"]!.map((x) => Breakfast.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "breakfast": breakfast == null ? [] : List<dynamic>.from(breakfast!.map((x) => x.toJson())),
        "lunch": lunch == null ? [] : List<dynamic>.from(lunch!.map((x) => x.toJson())),
        "dinner": dinner == null ? [] : List<dynamic>.from(dinner!.map((x) => x.toJson())),
        "snack": snack == null ? [] : List<dynamic>.from(snack!.map((x) => x.toJson())),
      };
}

class Breakfast {
  String? food;
  num? calories;
  num? protein;
  num? carbs;
  num? fat;

  Breakfast({
    this.food,
    this.calories,
    this.protein,
    this.carbs,
    this.fat,
  });

  factory Breakfast.fromJson(Map<String, dynamic> json) => Breakfast(
        food: json["food"],
        calories: json["calories"],
        protein: json["protein"]?.toDouble(),
        carbs: json["carbs"]?.toDouble(),
        fat: json["fat"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "food": food,
        "calories": calories,
        "protein": protein,
        "carbs": carbs,
        "fat": fat,
      };
}
