num = int(input("Enter a number: "))

if num == 0:
    print("No set bits")
else:
    rightmost_set_bit = num & -num

    print("Number:", num)
    print("Rightmost set bit value:", rightmost_set_bit)
    print("Binary of number:", format(num, 'b'))
    print("Binary of rightmost set bit:", format(rightmost_set_bit, 'b'))