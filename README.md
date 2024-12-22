# Objective-C NSDecimalNumber Comparison Bug

This repository demonstrates a subtle bug that can occur when comparing `NSDecimalNumber` objects initialized from floating-point numbers in Objective-C.  Due to the limitations of floating-point representation, comparing seemingly equal numbers can yield unexpected results.

The `bug.m` file contains code that reproduces the issue. The `bugSolution.m` file provides a solution using `NSDecimalNumber`'s string initializer to ensure accurate comparisons.

## How to Reproduce

1. Clone this repository.
2. Open the project in Xcode.
3. Run the `bug.m` file. Observe that the comparison yields an unexpected result.
4. Run the `bugSolution.m` file. Observe that the comparison now yields the correct result.

## Solution

The solution involves initializing `NSDecimalNumber` objects directly from strings representing the decimal values, avoiding the potential for floating-point inaccuracies during the initialization process.