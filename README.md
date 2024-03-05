# webkeyz Flutter Task
Welcome to our webkeyz technical task for Flutter developer candidates. This document outlines a coding challenge designed to assess your problem-solving skills and expertise in Dart and Flutter.

## Task Description
You are tasked with implementing the Payment Planner algorithm using Dart. This algorithm is designed to calculate payments among participants in a group to settle balances.

## Algorithm Rules
- Each participant has a balance indicating the amount they owe or are owed.
- The objective is to adjust the balances so that each participant has an equal balance.
- Participants with positive balances owe money, while those with negative balances are owed money.
- The algorithm determines how to transfer money between participants to settle these balances.
- Payments are made from participants with positive balances to those with negative balances.
- The aim is to minimize the number of transactions needed to efficiently settle all balances.

## Specifications
- You will work with a Dart class `PaymentPlanner` that handles the logic for calculating payments.
- The `PaymentPlanner` class includes an `initialize` method accepting an array of participant objects.
- Each participant object has a `balance` (the amount owed or owed) and a `name`.
- The `PaymentPlanner` class has a `payments` method that calculates the necessary payments to settle balances.
- The goal is to minimize the number of payments to efficiently settle all balances.
- The `payments` method returns an array of payment objects, each containing `from` (payer), `to` (payee), and `amount` (transferred sum).
- Unit tests using RSpec are provided to ensure the implementation's correctness.
- Your primary task is to implement the `payments` method in the `PaymentPlanner` class to pass the unit tests.

Refer to the provided unit tests for detailed expected behavior and outcomes.



## How to Submit

To submit your completed task, please follow these steps:

1. **Fork the Repository:** Fork the provided GitHub repository to your own GitHub account.
2. **Implement the Solution:** Complete the task in your forked repository, adhering to the provided specifications.
3. **Commit Your Changes:** Commit your changes using meaningful messages that follow git conventional commit standards. Ensure your commits clearly document the evolution of your solution.
4. **Email Your Submission:** Once you are satisfied with your implementation, send an email to `code@webkeyz.com`. Use the subject line `"Flutter Task Submission - [Your First Name] [Your Last Name]"` and include the URL of your forked GitHub repository in the email body.

Please replace `[Your First Name]` and `[Your Last Name]` with your actual first and last names. This helps us identify your submission quickly and efficiently.

We look forward to reviewing your innovative solutions. **Good luck with your implementation!** ✨🚀