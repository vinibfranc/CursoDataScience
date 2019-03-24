lst = [1, 2, 3, 4, 5]
print(lst)
lst2 = [1, 2, 3, "4", True]
print(lst2)
lst3 = [12, [1, 2, 3, 4, 5], "a"]
print(lst3)
lst4 = list(range(0, 10))
print(lst4)

print(len(lst))

lst[0] = 4
print(lst)

for i in range(0, len(lst4)):
    print(lst4[i])
