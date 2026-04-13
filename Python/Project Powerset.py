arr = list(input("Enter characters (no spaces): "))
n = len(arr)

substrings = []

for i in range(n):
    temp = ""
    for j in range(i, n):
        temp += arr[j]
        substrings.append(temp)

unique_substrings = list(set(substrings))
unique_substrings.sort()

print("All unique substrings are:")
for sub in unique_substrings:
    print(sub)

print("\nTotal substrings:", len(substrings))
print("Unique substrings:", len(unique_substrings))