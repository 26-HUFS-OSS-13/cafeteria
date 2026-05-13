import '../models/meal_type.dart';
import '../models/nutrition_facts.dart';
import '../models/selected_menu_line.dart';

/// 05 문서 1단계: 선택된 메뉴 샘플 (API 없이 화면부터 검증).
class SampleSelectedMenus {
  SampleSelectedMenus._();

  /// `NutritionSummaryResponse.date`에 대응.
  static const String summaryDate = '2026-05-13';

  static const List<SelectedMenuLine> items = <SelectedMenuLine>[
    SelectedMenuLine(
      id: 101,
      date: summaryDate,
      cafeteriaName: '학생식당',
      mealType: MealType.lunch,
      title: '중식 A코스',
      rawMenuText: '쌀밥, 제육볶음, 된장국, 김치',
      nutrition: NutritionFacts(
        caloriesKcal: 850,
        carbohydrateG: 105,
        proteinG: 34,
        fatG: 30,
        sodiumMg: 1600,
      ),
    ),
    SelectedMenuLine(
      id: 201,
      date: summaryDate,
      cafeteriaName: '기숙사식당',
      mealType: MealType.dinner,
      title: '석식',
      rawMenuText: '잡곡밥, 닭갈비, 미역국, 깍두기',
      nutrition: NutritionFacts(
        caloriesKcal: 720,
        carbohydrateG: 88,
        proteinG: 38,
        fatG: 22,
        sodiumMg: 980,
      ),
    ),
    SelectedMenuLine(
      id: 102,
      date: summaryDate,
      cafeteriaName: '학생식당',
      mealType: MealType.lunch,
      title: '중식 B코스',
      rawMenuText: '카레라이스, 돈까스, 샐러드',
      nutrition: NutritionFacts(
        caloriesKcal: 920,
        carbohydrateG: 112,
        proteinG: 28,
        fatG: 36,
        sodiumMg: 1400,
      ),
    ),
  ];
}
