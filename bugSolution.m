The solution is to avoid initializing `NSDecimalNumber` objects from floating-point numbers if precise comparison is crucial. Instead, initialize them using strings representing the exact decimal values:

```objectivec
NSDecimalNumber *decimal1 = [NSDecimalNumber decimalNumberWithString:@