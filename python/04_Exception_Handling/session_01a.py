try:
    re=22/0
except ZeroDivisionError:
    print("You can't divide by zero")
except TypeError:
    print("You can't divide the number with string or string by number")
except Exception as e:
    print("this error occured", e)