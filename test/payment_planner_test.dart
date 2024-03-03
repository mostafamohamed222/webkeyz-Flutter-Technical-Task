import 'package:test/test.dart';
import 'package:webkeyz_technical_task/payment_planner.dart';

void main() {
  group('PaymentPlanner', () {
    test('returns correct payments when Ali and Mark owe to Nour', () {
      final participants = [
        {'balance': 500, 'name': 'Nour'},
        {'balance': -300, 'name': 'Ali'},
        {'balance': -200, 'name': 'Mark'}
      ];

      final planner = PaymentPlanner();

      final payments = planner.payments(participants);

      expect(payments.length, 2);

      expect(payments[0].fromName, 'Ali');
      expect(payments[0].toName, 'Nour');
      expect(payments[0].amount, 300);

      expect(payments[1].fromName, 'Mark');
      expect(payments[1].toName, 'Nour');
      expect(payments[1].amount, 200);
    });
  });
}
