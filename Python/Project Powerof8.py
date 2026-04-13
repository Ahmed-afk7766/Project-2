num = int(input("Enter a number: "))

if num <= 0:
    print("Not a power of 8")
else:
    while num % 8 == 0:
        num = num // 8

    if num == 1:
        print("Power of 8")
    else:
        print("Not a power of 8")