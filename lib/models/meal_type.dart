/// OpenAPI `MealType`과 동일한 식사 구분.
enum MealType {
  breakfast,
  lunch,
  dinner,
  other,
}

extension MealTypeLabel on MealType {
  String get koLabel => switch (this) {
        MealType.breakfast => '아침',
        MealType.lunch => '점심',
        MealType.dinner => '저녁',
        MealType.other => '기타',
      };
}
