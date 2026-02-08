def prints(n):
    if(n<=0):
        return
    print("Codingal")
    prints(n/2)
    prints(n/2)

# T(n) = T(n/2) +T(n/2) +0(1) when n>0
# T(n) = 0(1) when n<=0
# T(n) = T(n/2) + T(n/2) + 0(1) 