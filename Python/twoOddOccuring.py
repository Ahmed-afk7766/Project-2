def printTwoOdd(arr, size):

    xorof2 = arr[0]

    x = 0
    y = 0

    Setbit = 0

    for i in range(1, size):
        xorof2 = xorof2 ^ arr[i]

    Setbit = xorof2 & ~(xorof2 - 1)

    for i in range(size):
        if(arr[i] & Setbit):
            x = x ^ arr[i]
        else:
            y = y ^ arr[i]

    print("the two ODD elements are", x, "&", y)


arr = []

arr_size = int(input("Enter size of the array : "))
for i in range(0,arr_size):
    z = int(input("Enter element : "))
    arr.append(z)

printTwoOdd(arr, arr_size)
