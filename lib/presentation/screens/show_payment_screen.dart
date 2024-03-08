import 'package:flutter/material.dart';
import 'package:webkeyz_flutter_technical_task/presentation/widget/payment_list_widget.dart';

class ShowPaymentsScreen extends StatelessWidget {
  const ShowPaymentsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "payments screen",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: PaymentListWidget(),
    );
  }
}
