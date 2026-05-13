import 'package:flutter_test/flutter_test.dart';

import 'package:cafeteria/main.dart';

void main() {
  testWidgets('선택 메뉴 요약 화면이 표시된다', (WidgetTester tester) async {
    await tester.pumpWidget(const CafeteriaApp());

    expect(find.text('선택 메뉴 요약'), findsOneWidget);
    expect(find.text('중식 A코스'), findsOneWidget);
    expect(find.textContaining('선택한 메뉴'), findsOneWidget);
  });
}
