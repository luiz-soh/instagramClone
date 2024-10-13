import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:instagram_clone/app/view/app_view.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const AppView());
      expect(find.byType(Scaffold), findsOneWidget);
    });
  });
}
