def generate_subsequences(s):
    n = len(s)
    total = 1 << n
    
    count = 0
    
    for i in range(1, total):
        subseq = ""
        
        for j in range(n):
            if i & (1 << j):
                subseq += s[j]
        
        print(subseq)
        count += 1
    
    print("Total subsequences:", count)


def generate_substrings(s):
    count = 0
    
    for i in range(len(s)):
        for j in range(i + 1, len(s) + 1):
            print(s[i:j])
            count += 1
    
    print("Total substrings:", count)


if __name__ == "__main__":
    string = input("Enter a string: ")
    
    generate_subsequences(string)
    generate_substrings(string)