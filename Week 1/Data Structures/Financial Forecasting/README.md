# Exercise 7: Financial Forecasting
## Objective

To develop a financial forecasting tool that predicts future values based on past growth rates using recursion.

## Understanding Recursion

Recursion is a technique in which a method calls itself to solve a problem. A recursive solution consists of:

- Base Case: Stops the recursion.
- Recursive Case: Calls the same method with a smaller problem.

Recursion helps simplify problems that can be broken down into smaller subproblems.

## Algorithm

1. Start with the current financial value.
2. Apply the annual growth rate.
3. Recursively calculate the value for the remaining years.
4. Stop when the number of years becomes zero.
5. Return the predicted future value.

## Sample Input

Current Value = 10000

Growth Rate = 10% (0.10)

Years = 5

## Output

Future Value after 5 years: 16105.10

## Time Complexity Analysis

### Recursive Algorithm

- One recursive call is made for each year.
- Time Complexity: O(n)
- Space Complexity: O(n)

where n represents the number of years.

## Optimization Techniques

### 1. Iterative Approach

- Replace recursion with loops.
- Reduces memory usage.
- Eliminates recursive call overhead.

### 2. Mathematical Formula

Future Value = Present Value × (1 + Growth Rate)^Years

- Calculates the result directly.
- More efficient for large values of n.

### 3. Memoization

- Store previously computed results.
- Avoid repeated calculations.
- Useful for more complex recursive problems.

## Conclusion

The recursive approach provides a simple and effective method for forecasting future financial values based on annual growth rates. The algorithm has a time complexity of O(n) and a space complexity of O(n). For larger datasets, iterative methods or direct mathematical formulas can be used to improve performance and reduce memory consumption.
