import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webkeyz_flutter_technical_task/const.dart';
import 'package:webkeyz_flutter_technical_task/presentation/bloc/payment_planner_bloc.dart';
import 'package:webkeyz_flutter_technical_task/presentation/bloc/payment_planner_event.dart';
import 'package:webkeyz_flutter_technical_task/presentation/screens/show_payment_screen.dart';
import 'package:webkeyz_flutter_technical_task/presentation/widget/participants_card.dart';

class AddParticipantsScreen extends StatelessWidget {
  const AddParticipantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "number of participants: ${ConstManager.participants.length}",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .6,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ParticipantsCardWidget(
                participant: ConstManager.participants[index],
              );
            },
            itemCount: ConstManager.participants.length,
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black)),
            onPressed: () {
              BlocProvider.of<PaymentPlannerBloc>(context)
                  .add(CalculatesPayments());
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ShowPaymentsScreen();
                  },
                ),
              );
            },
            child: Text(
              "payments calculated",
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
