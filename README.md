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