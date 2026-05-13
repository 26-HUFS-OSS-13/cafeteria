import 'package:flutter/material.dart';

import '../models/meal_type.dart';
import '../models/selected_menu_line.dart';

/// 선택한 메뉴 목록을 보여주는 요약 화면 (1차: 목록 UI만).
class NutritionSummaryScreen extends StatelessWidget {
  const NutritionSummaryScreen({
    super.key,
    required this.summaryDate,
    required this.menus,
  });

  final String summaryDate;
  final List<SelectedMenuLine> menus;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('선택 메뉴 요약'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        children: [
          Text(
            summaryDate,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '선택한 메뉴 ${menus.length}개',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 16),
          ...menus.map((m) => _MenuTile(line: m)),
        ],
      ),
    );
  }
}

class _MenuTile extends StatelessWidget {
  const _MenuTile({required this.line});

  final SelectedMenuLine line;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final n = line.nutrition;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              line.title,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '${line.cafeteriaName} · ${line.mealType.koLabel}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            if (line.rawMenuText != null) ...[
              const SizedBox(height: 8),
              Text(
                line.rawMenuText!,
                style: theme.textTheme.bodySmall,
              ),
            ],
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 6,
              children: [
                _NutrientChip(
                  label: '열량',
                  value: '${n.caloriesKcal.round()} kcal',
                ),
                _NutrientChip(
                  label: '탄수화물',
                  value: '${n.carbohydrateG.round()} g',
                ),
                _NutrientChip(
                  label: '단백질',
                  value: '${n.proteinG.round()} g',
                ),
                _NutrientChip(
                  label: '지방',
                  value: '${n.fatG.round()} g',
                ),
                _NutrientChip(
                  label: '나트륨',
                  value: '${n.sodiumMg.round()} mg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _NutrientChip extends StatelessWidget {
  const _NutrientChip({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Chip(
      visualDensity: VisualDensity.compact,
      label: Text('$label $value'),
      labelStyle: theme.textTheme.labelMedium,
      side: BorderSide(color: theme.colorScheme.outlineVariant),
    );
  }
}
