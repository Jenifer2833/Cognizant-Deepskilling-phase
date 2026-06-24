-- Scenario 1: Apply 1% discount to loan interest rates for customers above 60

BEGIN
    FOR cust IN (
        SELECT CustomerID, Age
        FROM Customers
        WHERE Age > 60
    ) LOOP
        UPDATE Loans
        SET InterestRate = InterestRate - 1
        WHERE CustomerID = cust.CustomerID;
    END LOOP;

    COMMIT;
END;
/

-- Scenario 2: Promote customers to VIP status

BEGIN
    FOR cust IN (
        SELECT CustomerID, Balance
        FROM Customers
        WHERE Balance > 10000
    ) LOOP
        UPDATE Customers
        SET IsVIP = 'TRUE'
        WHERE CustomerID = cust.CustomerID;
    END LOOP;

    COMMIT;
END;
/

-- Scenario 3: Send reminders for loans due within 30 days

BEGIN
    FOR loan_rec IN (
        SELECT CustomerID, LoanID, DueDate
        FROM Loans
        WHERE DueDate BETWEEN SYSDATE AND SYSDATE + 30
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Reminder: Customer '
            || loan_rec.CustomerID
            || ' has Loan '
            || loan_rec.LoanID
            || ' due on '
            || loan_rec.DueDate
        );
    END LOOP;
END;
/
