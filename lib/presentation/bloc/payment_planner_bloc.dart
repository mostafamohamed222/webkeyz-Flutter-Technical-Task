import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webkeyz_flutter_technical_task/domain/usecases/calculate_payment_usecase.dart';
import 'package:webkeyz_flutter_technical_task/domain/model/payment_model.dart';
import 'package:webkeyz_flutter_technical_task/presentation/bloc/payment_planner_event.dart';
import 'package:webkeyz_flutter_technical_task/presentation/bloc/payment_planner_state.dart';

class PaymentPlannerBloc
    extends Bloc<PaymentPlannerEvent, PaymentPlannerState> {
  PaymentPlannerBloc() : super(PaymentPlannerState()) {
    on<CalculatesPayments>(_calculatePayment);
  }
  static get(BuildContext context) =>
      BlocProvider.of<PaymentPlannerBloc>(context);

  FutureOr<void> _calculatePayment(
      CalculatesPayments event, Emitter<PaymentPlannerState> emit) {
    emit(state.copyWith(payments: []));
    CalculatePaymentUsecase  calculatePaymentUsecase = CalculatePaymentUsecase();
    List<Payment> payments = calculatePaymentUsecase.call();
    emit(state.copyWith(payments: payments));
  }
}
