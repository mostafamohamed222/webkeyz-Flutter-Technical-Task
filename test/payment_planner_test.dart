import 'package:flutter_test/flutter_test.dart';
import 'package:webkeyz_flutter_technical_task/payment_planner.dart';

void main() {
  group('PaymentPlanner', () {
    test('returns correct payments when Ali and Mark owe to Nour', () {
      List<Map<String, dynamic>> participants = [
        {'amount': 500, 'name': 'Nour'},
        {'amount': -300, 'name': 'Ali'},
        {'amount': -200, 'name': 'Mark'}
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
    test(
        'returns correct payments when Ali owe to Nour by 100 to be all with same amount is -200 ',
        () {
      List<Map<String, dynamic>> participants = [
        {'amount': -100, 'name': 'Nour'},
        {'amount': -300, 'name': 'Ali'},
        {'amount': -200, 'name': 'Mark'}
      ];

      final planner = PaymentPlanner();

      final payments = planner.payments(participants);

      expect(payments.length, 1);

      expect(payments[0].fromName, 'Ali');
      expect(payments[0].toName, 'Nour');
      expect(payments[0].amount, 100);
    });
    test(
        'returns correct payments when Mark owe to Nour to be amount is for every one is -100 ',
        () {
      List<Map<String, dynamic>> participants = [
        {'amount': 0, 'name': 'Nour'},
        {'amount': -100, 'name': 'Ali'},
        {'amount': -200, 'name': 'Mark'}
      ];

      final planner = PaymentPlanner();

      final payments = planner.payments(participants);

      expect(payments.length, 1);

      expect(payments[0].fromName, 'Mark');
      expect(payments[0].toName, 'Nour');
      expect(payments[0].amount, 100);
    });
    
  });

}
