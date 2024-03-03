# webkeyz_technical_task

## Task Description:
Title: Implement Payment Planner Algorithm

## Description:
You are tasked with implementing the Payment Planner algorithm using Dart. The Payment Planner algorithm is responsible for calculating payments among participants to settle balances in a group.

The algorithm follows these rules:

Each participant has a balance, which represents the amount of money they owe or are owed.
The goal is to settle all balances so that each participant ends up with an equal balance.
Participants with positive balances owe money, while participants with negative balances are owed money.
The algorithm calculates payments to transfer money between participants to settle their balances.
Payments are made from participants with positive balances to participants with negative balances.
Payments should be minimized to settle all balances efficiently.
Your task involves implementing the Payment Planner algorithm according to the provided specifications and unit tests.

## Specifications:

You are provided with a Dart class PaymentPlanner that contains the logic for calculating payments among participants.
The PaymentPlanner class has an initialize method that takes an array of participant objects as input.
Each participant object has attributes balance (representing the balance owed or owed by the participant) and name (the name of the participant).
The PaymentPlanner class has a payments method that calculates the payments needed to settle the balances among participants.
The algorithm aims to minimize the number of payments required to settle all balances efficiently.
The payments method returns an array of payment objects, where each payment object contains attributes from (the participant making the payment), to (the participant receiving the payment), and amount (the amount of money being transferred).
Unit tests are provided using RSpec to validate the correctness of the implementation.
You should focus on implementing the payments method of the PaymentPlanner class to pass the provided unit tests.
Your task is to write the code for the payments method of the PaymentPlanner class to ensure that all unit tests pass successfully.

Please refer to the provided unit tests for expected behavior and outcomes.

Best of luck with your implementation!