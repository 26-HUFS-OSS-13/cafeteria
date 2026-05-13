import 'meal_type.dart';
import 'nutrition_facts.dart';

/// 샘플·로컬 UI용: 메뉴 한 줄 + 예상 영양.
/// API의 `SelectedMenu`는 id·식당·식사·제목만 있고, 합산은 응답 상위 필드에 오므로
/// 나중에 연동 시 `NutritionSummaryResponse`로 치환하면 됩니다.
class SelectedMenuLine {
  const SelectedMenuLine({
    required this.id,
    required this.date,
    required this.cafeteriaName,
    required this.mealType,
    required this.title,
    required this.nutrition,
    this.rawMenuText,
  });

  final int id;
  final String date;
  final String cafeteriaName;
  final MealType mealType;
  final String title;
  final NutritionFacts nutrition;
  final String? rawMenuText;
}
