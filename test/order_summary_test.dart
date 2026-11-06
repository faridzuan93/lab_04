
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:lab_04/order_summary.dart';

void main() {
  testWidgets('Order Summary displays correct order details',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: OrderSummaryScreen(
          itemName: 'Cheese Pizza',
          quantity: 5,
          unitPrice: 5.00,
        ),
      ),
    );

    expect(find.text('Order Summary'), findsOneWidget);
    expect(find.text('Item: Cheese Pizza'), findsOneWidget);
    expect(find.text('Quantity: 5'), findsOneWidget);
    expect(find.text('Unit Price: RM 5.00'), findsOneWidget);
    expect(find.text('Total: RM 25.00'), findsOneWidget);
  });
}
