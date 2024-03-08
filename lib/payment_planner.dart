import 'package:webkeyz_flutter_technical_task/domain/model/payment_model.dart';

class PaymentPlanner {
  //TODO: Assuming a placeholder implementation for now
  List<Payment> payments(List<Map<String, dynamic>> participants) {
    final payments = <Payment>[];

    double sum = 0;
    // sort participants by amount to make the large positive amount in first
    participants.sort((a, b) => b['amount'] - a['amount']);

    // use this to cal sum of all amount
    sum = participants.fold(
        0, (previousValue, element) => previousValue += element['amount']);

    // cal the balance for every one to be equal
    double perPerson = sum / participants.length;

    // use it to index frist participant with - balance
    int indexofFirstN = -1;

    for (int i = 0; i < participants.length; i++) {
      // cal the amount need to send or take from every participant to reach for the amount perPerson
      participants[i]["amount"] -= perPerson;

      // use this if to find frist participant with - balance
      if (participants[i]['amount'] < 0 && indexofFirstN == -1) {
        indexofFirstN = i;
      }
    }

    // loop from 0 to first one with -ve balance
    for (int i = 0; i < indexofFirstN; i++) {
      // loop from last one to first one with -ve balance
      // (why we did it ? to minimize the number of transactions send amount from participant who has large blance to participants who has small blance)
      for (int j = participants.length - 1; j >= indexofFirstN; j--) {
        if (participants[j]['amount'] != 0) {
          // here we amount needed for participant[i] <= participants[j] so we will take all amount needed from j to i to reach by (participant i) to amount per person
          if (participants[i]['amount'] <= (participants[j]['amount'] * -1)) {
            payments.add(Payment(participants[j]['name'],
                participants[i]['name'], participants[i]['amount']));
            participants[j]['amount'] += participants[i]['amount'];
            participants[i]['amount'] = 0;
            break;
          } else {
            // here we amount needed for participant[i] > participants[j] so we will take all amount from participant[j] to participants[i]
            payments.add(Payment(participants[j]['name'],
                participants[i]['name'], participants[j]['amount'] * -1));
            participants[i]['amount'] += participants[j]['amount'];
            participants[j]['amount'] = 0;
          }
        }
      }
    }

    return payments;
  }
}
