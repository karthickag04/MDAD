
# this method given to find what kind of error occurs if user gives invalid types to divide - for example divide number 10 by string '2'
def division_ex_to_find_error(dividend, divisor):
    try:
        result = dividend / divisor  # Attempt division
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
    division_ex_to_find_error(10, 2)
    # Output:
    # Result of division: 5.0
    # Division operation complete.
    print("")
    print("")
    # Example 4:
    # calling second method declared above to find out what kind of error occurs when passing to divide number 10 with string '2' 
    # Unknown error (should be caught by the 'except Exception' block)
    division_ex_to_find_error(10, '2')
    # Output:
    # An unexpected error occurred: unsupported operand type(s) for /: 'int' and 'str'
    # Division operation complete.
