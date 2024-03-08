import 'package:webkeyz_flutter_technical_task/domain/model/payment_model.dart';
import 'package:webkeyz_flutter_technical_task/payment_planner.dart';

class CalculatePaymentUsecase {
  List<Payment> call() {
    PaymentPlanner paymentPlanner = PaymentPlanner();
    List<Payment> payments = paymentPlanner.payments([
      {"name": "Nour", "amount": -100},
      {"name": "ali", "amount": -300},
      {"name": "Mark", "amount": -200},
      // {"name": "ibrahim", "amount": 10},
      // {"name": "samy", "amount": 5},
      // {"name": "amir", "amount": -15},
      // {"name": "mousa", "amount": 0},
      // {"name": "karim", "amount": 25},
      // {"name": "saad", "amount": -35},
      // {"name": "abdo", "amount": 30},
    ]);
    return payments;
  }
}
