
# Define a function to demonstrate exception handling
def division_example(dividend, divisor):
    try:
        result = dividend / divisor  # Attempt division
    except ZeroDivisionError:
        # Handle division by zero error
        print("Error: Division by zero is not allowed.")
    except TypeError:
        # Handle type error (e.g., if non-numeric values are provided)
        print("Error: Invalid types provided for division.")
    except Exception as e:
        # Catch any other exceptions not explicitly handled
        print(f"An unexpected error occurred: {e}")
    else:
        # Code in else block runs only if no exceptions were raised
        print(f"Result of division: {result}")
    finally:
        # Optional cleanup or finalization code
        print("Division operation complete.")


# Examples of using the function with different inputs
if __name__ == "__main__":
    # Example 1: Valid division
    division_example(10, 2)
    # Output:
    # Result of division: 5.0
    # Division operation complete.
    print("")
    print("")
    print("")
    # Example 2: Division by zero
    division_example(5, 0)
    # Output:
    # Error: Division by zero is not allowed.
    # Division operation complete.
    print("")
    print("")
    # Example 3: Type error
    division_example('abc', 2)
    # Output:
    # Error: Invalid types provided for division.
    # Division operation complete.
