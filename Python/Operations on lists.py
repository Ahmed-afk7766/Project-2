lst = ['Civic', 'Grande', 'BMW', 'Fortuner']

print("Lenght of list:", len(lst))
print("First Elemnet:", lst[0])
print("Last Element:", lst[-1])

lst.append('Parado')
print("Updated List :", lst)

lst.remove('Grande')
print("Updated List :", lst)

lst.sort()
print("Sorted List :", lst)

lst.pop(1)
print("Updated List :", lst)

lst.reverse()
print("Reversed List :", lst)

print("Multiplication on List :", lst*2)

lst = lst[:4]
print("Sliced List :", lst)

lst.clear()
print("Updated List :", lst)