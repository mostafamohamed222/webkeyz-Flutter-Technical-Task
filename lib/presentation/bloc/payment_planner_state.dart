import 'package:webkeyz_flutter_technical_task/domain/model/payment_model.dart';

class PaymentPlannerState {
  List<Payment> payments;

  PaymentPlannerState({
    this.payments = const [],
  });

  PaymentPlannerState copyWith({List<Payment>? payments, bool? loading}) {
    return PaymentPlannerState(
      payments: payments ?? this.payments,
    );
  }
  
}
