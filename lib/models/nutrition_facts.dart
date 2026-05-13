/// OpenAPI `NutritionFacts`와 동일 필드 (kcal, g, mg).
class NutritionFacts {
  const NutritionFacts({
    required this.caloriesKcal,
    required this.carbohydrateG,
    required this.proteinG,
    required this.fatG,
    required this.sodiumMg,
  });

  final double caloriesKcal;
  final double carbohydrateG;
  final double proteinG;
  final double fatG;
  final double sodiumMg;

  NutritionFacts operator +(NutritionFacts o) => NutritionFacts(
        caloriesKcal: caloriesKcal + o.caloriesKcal,
        carbohydrateG: carbohydrateG + o.carbohydrateG,
        proteinG: proteinG + o.proteinG,
        fatG: fatG + o.fatG,
        sodiumMg: sodiumMg + o.sodiumMg,
      );

  static NutritionFacts sum(Iterable<NutritionFacts> items) =>
      items.reduce((a, b) => a + b);
}
