#creating list
sales=[1200,1500,1800,1700]
'''
print(sales)
print(sales[0])
print(sales[-1])

#modify sales
sales[1]=1600
print(sales)

sales.append(2000)
sales.insert(0,3000)
print(sales)

sales.remove(1200)
print(sales)
'''
#creating dictonary 
'''customer = {"name" : "Prachi",
            "age" : 19,
            "city" : "surat",
            "sales" : "120000"}
print(customer)
print(customer['name'])
customer["age"]=20
customer["membership"]="Platinum"
print(customer["age"])
print(customer)
'''
#for loops using conditional statements
'''for amount in sales :
    if amount > 1500 :
        print(amount)


    '''

#define functions
''''
def cal_tax(amount):
    tax=amount*0.8
    return tax

print(cal_tax(120000))
'''

#mini task
salary=[90000,20000,80000,30000,40000]
for sal in salary :
    if sal > 30000 :
        print("More than average pay :",sal)

employee ={
    'name' : "prachi",
    "age":20,
    "salary":200000,
    "role":"CEO"
}
print(employee)