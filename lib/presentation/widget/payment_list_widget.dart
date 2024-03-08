import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webkeyz_flutter_technical_task/payment_planner.dart';
import 'package:webkeyz_flutter_technical_task/presentation/bloc/payment_planner_bloc.dart';
import 'package:webkeyz_flutter_technical_task/presentation/bloc/payment_planner_state.dart';

class PaymentListWidget extends StatelessWidget {
  const PaymentListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentPlannerBloc, PaymentPlannerState>(
      builder: (context, state) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: MediaQuery.sizeOf(context).width * .9,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text((index + 1).toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18)),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "from ${state.payments[index].fromName}",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          Text(
                            "to ${state.payments[index].toName}",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "+${state.payments[index].amount.toStringAsFixed(2)}",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "EGP",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: state.payments.length,
          ),
        );
      },
    );
  }
}
