## Return Value of break
In the previous exercise, you learned that the `while` loop returns `nil` unless `break` is used. Locate the documentation for `break`, and determine what value `break` sets the return value to for the `while` loop.

## Solution
The `break` keyword sets the return value for the `while` loop to:

- `nil` by default if no argument is supplied.
- The value passed directly as an argument to `break` in the `while` loop.