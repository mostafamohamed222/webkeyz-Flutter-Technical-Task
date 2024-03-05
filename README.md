# webkeyz Flutter Task
Welcome to our webkeyz technical task for Flutter developer candidates. This document outlines a coding challenge designed to assess your problem-solving skills and expertise in Dart and Flutter.

## Implement Payment Planner Algorithm with UI Widget

### Description
The task is to implement the Payment Planner algorithm using Dart, which is responsible for calculating payments among participants to settle balances in a group. Additionally, you will create a UI widget to display these payments in a format of your choice and develop a test widget for this display widget.

#### Algorithm Rules
- Each participant has a balance indicating the amount they owe or are owed.
- The objective is to settle all balances so that each participant has an equal balance.
- Participants with positive balances owe money, while those with negative balances are owed money.
- The algorithm calculates payments to transfer money between participants to settle their balances.
- Payments are made from participants with positive balances to those with negative balances.
- The aim is to minimize the number of transactions needed to efficiently settle all balances.

### Specifications

#### Payment Planner Algorithm:
- Work with the Dart class `PaymentPlanner`, which contains logic for calculating payments among participants.
- The `PaymentPlanner` class has an `initialize` method that takes an array of participant objects.
- Each participant object has attributes `balance` and `name`.
- The `PaymentPlanner` class's `payments` method calculates the necessary payments to settle balances.
- Focus on implementing the `payments` method to pass the provided unit tests.

#### Payment Display Widget:
- Create a widget to display the payments calculated by the Payment Planner algorithm.
- Design the widget to take an array of payment objects and display the information clearly.

#### Test Widget for Payment Display Widget:
- Develop a test widget to verify the functionality of the payment display widget.
- Ensure the test widget checks that the payment display widget accurately shows the payments.

Unit tests using `flutter_test` are provided to ensure the correctness of both the algorithm implementation and the widget functionalities.

Refer to the provided unit tests for expected behavior and outcomes.

## How to Submit
To submit your completed task, please follow these steps:
1. **Fork the Repository:** Fork the provided GitHub repository to your own GitHub account.
2. **Implement the Solution:** Complete the task in your forked repository, ensuring you adhere to the provided specifications and pass all unit tests.
3. **Commit Your Changes:** Commit your changes using meaningful messages that follow git conventional commit standards. Ensure your commits clearly document the evolution of your solution.
4. **Email Your Submission:** Once you are satisfied with your implementation, send an email to `code@webkeyz.com`. Use the subject line "Flutter Task Submission - [Your First Name] [Your Last Name]" and include the URL of your forked GitHub repository in the email body.

Replace `[Your First Name]` and `[Your Last Name]` with your actual names. This assists us in identifying your submission efficiently.

**We look forward to your innovative solutions and wish you the best of luck!** 🚀✨