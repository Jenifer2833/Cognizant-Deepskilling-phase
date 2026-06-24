# Exercise 3: Stored Procedures

## Objective

To demonstrate the creation and use of PL/SQL stored procedures for automating banking operations such as interest calculation, employee bonus processing, and fund transfers.

## Scenario 1: Process Monthly Interest

### Requirement

Calculate and update the balance of all savings accounts by applying an interest rate of 1%.

### Procedure

ProcessMonthlyInterest

### Approach

- Identify all savings accounts.
- Calculate 1% interest on the current balance.
- Update the balance.
- Commit the changes.

### Output

Savings account balances are increased by 1%.

---

## Scenario 2: Update Employee Bonus

### Requirement

Update employee salaries in a specific department by adding a bonus percentage provided as a parameter.

### Procedure

UpdateEmployeeBonus

### Parameters

- Department ID
- Bonus Percentage

### Approach

- Select employees belonging to the specified department.
- Calculate the bonus amount.
- Update employee salaries.
- Commit the changes.

### Output

Employee salaries are updated with the specified bonus percentage.

---

## Scenario 3: Transfer Funds

### Requirement

Transfer a specified amount from one account to another after verifying sufficient balance.

### Procedure

TransferFunds

### Parameters

- Source Account Number
- Destination Account Number
- Transfer Amount

### Approach

- Retrieve source account balance.
- Verify sufficient funds.
- Deduct amount from source account.
- Add amount to destination account.
- Commit the transaction.
- Display appropriate messages.

### Output

- "Fund Transfer Successful" if balance is sufficient.
- "Insufficient Balance" if balance is not enough.
- "Account Not Found" if account does not exist.

---

## Benefits of Stored Procedures

- Improved performance.
- Reduced network traffic.
- Better security.
- Reusable business logic.
- Easier maintenance.

---

## Conclusion

This exercise demonstrates how stored procedures can be used to automate financial operations efficiently. The procedures perform monthly interest calculations, employee bonus updates, and secure fund transfers while ensuring data consistency and integrity.
