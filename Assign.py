list1 = [2,4,6,8,4,2,-5,-1,-2,9,4]
#1. Sum all the items in a list.
sum =0
for i in list1:
sum += i
print ("Sum of the list items : ",sum)
#2. Get the largest number from a list.
larg = list1[0]
for i in list1:
if(i>larg):
larg = i
print ("largest no of the list : ",larg)
#3. Remove duplicates from a list.
list2 = list(dict.fromkeys(list1))
print("removed duplicates from the list : ",list2)
#4. Separate positive and negative number from a list.
listn=[]
for i in list1:
if(i < 0):
listn.append(i)
print("list of -ve integers: ",listn)
listp=[]
for i in list1:
if(i > 0):
listp.append(i)
print("list of positive integers: ",listp)
#5. Filter even and odd number from a list.
liste=[]
for i in list1:
if(i % 2 ==0):
liste.append(i)
print("list of even no :",liste)
listo=[]
for i in list1:
if(i % 2 !=0):
listo.append(i)
print("list of odd no :",listo)