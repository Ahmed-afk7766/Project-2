num = int(input("Enter a number: "))

bit_size = 32
reversed_num = 0

temp = num

for i in range(bit_size):
    bit = temp & 1
    reversed_num = (reversed_num << 1) | bit
    temp = temp >> 1

print("Original number:", num)
print("Reversed bits number:", reversed_num)

print("Original binary (32-bit):", format(num, '032b'))
print("Reversed binary (32-bit):", format(reversed_num, '032b'))